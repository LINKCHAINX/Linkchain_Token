pragma solidity ^0.4.24;

import './ownership/Ownable.sol'


contract Crowdsale is Ownable {
  using SafeMath for uint256;

  // The token being sold
  LinkchainToken public token;

  
  // address where funds are collected
  address public wallet;

 
  // amount of raised money in wei
  uint256 public totalweiRaised;
  
  // check if tokens have been put in exchanges for trade
  bool public tokensinexchange = false;
  
  //timestamp at which tokens hit exchanges
  uint256 public timetohitexchange;
  
  
  // Minimal possible cap in ethers
  uint256 public softCap = 5 ether; // TODO - set value at time of deployment
  
  // Maximum possible cap in ethers
  uint256 public hardCap = 20 ether; // TODO - set value at time of deployment
  
  // refund if softCap is not reached
  bool public refundAllowed = false;
  
  
  // true if sale is over - to be called by owner if softCap is not met or after all sales process is completed
  bool public hasendedsale = false;
  
 
  //total wei raised per adderss
  mapping(address => uint256) public investorweicontributed;
  
  
  //total tokens purchased by a particular account
  mapping(address => uint256) public accountTokensPurchased;
  
  //TODO - private
  mapping(address => uint256) public addId;
  
  //account to hold reserve tokens
  address public reserveaccount;
  
  
  //token distribution
  
  uint256 public  ADVISOR_TOKENS = 7350000;
  uint256 public  STRATEGIC_PARTNERS_TOKENS = 10000000;
  uint256 public  RESERVE_TOKENS = 109013333;
  uint256 public  OPERATIONS_TOKENS = 3150000;
  uint256 public  BOUNTY_TOKENS = 2000000;
  uint256 public  TEAM_TOKENS = 141820000;
  
  
  
  // PRESALE - STAGE 1
  
  uint256 public constant PRICE_PER_TOKEN_PRESALE     = 0.075 ether;
  uint256 public constant PRESALE_TOKENS = 56666667;
  uint256 public constant MIN_INVESTMENT_PRESALE     = 10 ether;
  uint256 public  START_TIME_PRESALE;
  uint256 public  END_TIME_PRESALE;
  uint256 public totalweiRaised_PRESALE;
  
  
  
  
  // PRIVATESALE - STAGE 2
  
  uint256 public constant PRICE_PER_TOKEN_PRIVATESALE     = 0.05 ether;
  uint256 public constant PRIVATESALE_TOKENS = 100000000;
  uint256 public constant MIN_INVESTMENT_PRIVATESALE     = 25 ether;
  uint256 public  START_TIME_PRIVATESALE;
  uint256 public  END_TIME_PRIVATESALE;
  uint256 public totalweiRaised_PRIVATESALE;
  
  
  
  
  // CROWDSALE - STAGE 3
  
  uint256 public constant PRICE_PER_TOKEN_CROWDSALE     = 0.1 ether;
  uint256 public constant CROWDSALE_TOKENS = 70000000;
  uint256 public constant MIN_INVESTMENT_CROWDSALE     = 0.3 ether;
  uint256 public  START_TIME_CROWDSALE;
  uint256 public  END_TIME_CROWDSALE;
  uint256 public totalweiRaised_CROWDSALE;
  
  
  //to set the time at which tokens hit the exchanges
  //Call this function only when sale ends
  function tokensavailableinexchange(bool _status) public onlyOwner
  {
      require(tokensinexchange != _status);
      tokensinexchange = _status;
      if(_status)
      {timetohitexchange = now;
       hasendedsale = true;  
      }
      else
      timetohitexchange = 0;
  }
  
  
  
  //helper function to set soft cap as a preventive step against market volatility
  function setsoftcap(uint256 _softCap) onlyOwner public{
      require(_softCap< hardCap);
      softCap = _softCap.mul(1 ether);
     
   }
   
  
  //helper function to set hard cap as a preventive step against market volatility
  
  function sethardcap(uint256 _hardCap) onlyOwner public{
      require(_hardCap>softCap);
      hardCap = _hardCap.mul(1 ether);
    
   }
  

  
  // ASSIGNING TOKENS TO ADDRESSES
  
  //assigning team addresses to token allocation
  
  function distributetokenstomembers(address[] memory _members, uint256 id, uint256 amount) onlyOwner public
  {
      require(_members.length<=150);
      require(4<=id && id<=6);
      require(valid_distribution(id,amount,_members.length));
      
      
      for(uint i=0; i<_members.length;i++)
      {   require(_members[i] != address(0));
          //If the owner sends an already listed address, the function ignores it
          if(addId[_members[i]] == 0)
          {
              accountTokensPurchased[_members[i]] = amount;
              addId[_members[i]] = id;
              tokensdistributed(id,amount);
              
          }
          else continue;
      }
      
      
  }
  
  

  function valid_distribution(uint256 _id, uint256 _amount, uint256 length) internal view returns(bool)
  {   require(!hasendedsale);
      uint256 getremainingdifference;
      uint256 getaddedtokens = idtotokens[_id];
      if(_id == 4)
      {
          getremainingdifference = TEAM_TOKENS.sub(getaddedtokens);
      }
      
      if(_id == 5)
      {
          getremainingdifference = STRATEGIC_PARTNERS_TOKENS.sub(getaddedtokens);
      }
      
      if(_id == 6)
      {
          getremainingdifference = ADVISOR_TOKENS.sub(getaddedtokens);
      }
      return _amount.mul(length) <= getremainingdifference;
  }
  
  

  //to remove a member from the sale
  function removemember(address _member) onlyOwner public
  {   require(_member != address(0));
      require(addId[_member]>=4 && addId[_member]<=6);
      
      uint256 identity = addId[_member];
      uint256 current_tokens_assigned = accountTokensPurchased[_member];
      accountTokensPurchased[_member] = 0;
      addId[_member] = 0;
      
      idtotokens[identity] = idtotokens[identity].sub(current_tokens_assigned);
      
  }    
      
 
  
  // Whitelist
   //

   // This is the stage or whitelist group that is currently in effect.
   // Everybody that's been whitelisted for earlier stages should be able to
   // contribute in the current stage.
  
   uint256 public currentStage;

   
   // This a mapping of address -> stage that they are allowed to participate in.
   // For example, if someone has been whitelisted for stage 2, they will be able
   // to participate for stages 2 and above but they would not be able to participate
   // in stage 1. A stage value of 0 means that the participant is not whitelisted.
   
 //  mapping(address => uint256) public whitelist;
   
   
   
   //function to add addresses to whitelist (one at a time)
   //If a person wants to get into different whitelists, they need to have separate addresses whitelisted
   
   function addAddressToWhitelist(address _addr, uint256 _stage) onlyOwner  public {
    require(_addr != address(0));
    require(addId[_addr] == 0);
    require(_stage >0 && _stage <= 3);

    
   // whitelist[_addr] = _stage;
    addId[_addr] = _stage;
    

    emit WhitelistedAddressAdded(_addr,_stage);
  }
  
   //function to add multiple addresses to whitelist in batch  
 
   function addWhitelists(address[] memory contributors, uint256 _stage) onlyOwner public {
     require(_stage> 0 && _stage <=3);
     require(contributors.length <= 150);
     
     

     for (uint i = 0; i < contributors.length; i++) {
      require(contributors[i] != address(0));
      if(addId[contributors[i]] == 0)
      { //whitelist[contributors[i]] = _stage;
        addId[contributors[i]] = _stage; 
        emit WhitelistedAddressAdded(contributors[i],_stage);
      }
      else continue;
      
    }
    
  }
  
  
  //function to remove addresses from whitelist (One at a time)
  function removeAddressFromWhitelist(address _addr) onlyOwner  public {
    require(_addr != address(0));
    require(addId[_addr] > 0 && addId[_addr]<=3);
    //the owner can not be unwhitelisted
    require(_addr != owner);

  //  whitelist[_addr] = 0;
    addId[_addr] = 0;
    
    uint256 current_balance = investorweicontributed[_addr];
    investorweicontributed[_addr] = 0;
    
    //edge case where an address is to be removed from the whitelist but it has already contributed
    if(current_balance > 0)
    {_addr.transfer(current_balance);
        totalweiRaised = totalweiRaised.sub(current_balance);
        accountTokensPurchased[_addr] = 0;
    }
    
    

    emit WhitelistedAddressRemoved(_addr);
   }
    
    
   
   // Allows the admin to determine what is the current stage for
   // the sale. It can only move forward.
   
   function setCurrentStage(uint256 _stage) public onlyOwner {
      require(_stage > 0 && _stage<=3);
      require(_stage>currentStage);

      

      currentStage = _stage;

      emit CurrentStageUpdated(_stage);

      
    }
    
 

   //funciton to check if the soft cap has been reached
   function softCapReached() constant public returns(bool) 
   
   {
       return totalweiRaised >= softCap;
   
   }

  

  /**
   * event for token purchase logging
   * @param purchaser who paid for the tokens
   * @param beneficiary who got the tokens
   * @param value weis paid for purchase
   * @param amount amount of tokens purchased
   */ 
  event TokenPurchase(address indexed purchaser, address indexed beneficiary, uint256 value, uint256 amount);
  event WhitelistedAddressAdded(address _addr, uint256 _stage);
  event WhitelistedAddressRemoved(address _addr);
  event CurrentStageUpdated(uint256 _stage);
  

   
  //constructor function for the crowdsale 
  //TODO- add start time and end time functionality at time of deployment
  constructor (address _reserveaccount, address _wallet, address _token) public {
    //require(_startTime >= now);
    //require(_endTime >= _startTime);
    
    require(_wallet != 0x0);
    require(_reserveaccount != 0x0);
    
    currentStage = 0;
    token = LinkchainToken(_token);
    reserveaccount = _reserveaccount;
    
   
    wallet = _wallet;
  }

  

  // fallback function can be used to buy tokens
   function () public payable {
   buyTokens(msg.sender);
   }
  
  
  uint256 public totaltokenspresale;
  uint256 public totaltokensprivatesale;
  uint256 public totaltokenscrowdsale;
  
  mapping (uint256 => uint256) public idtotokens;

  //low level token purchase function
  //check for upper buy limit per person and also refund excess money
  
  function getprice() internal view returns(uint256)
  {
      if(currentStage == 1)
      {return PRICE_PER_TOKEN_PRESALE;}
      
      if(currentStage == 2)
      {return PRICE_PER_TOKEN_PRIVATESALE;}
      
      if(currentStage == 3)
      {return PRICE_PER_TOKEN_CROWDSALE;}
  }
  
  function tokensdistributed(uint256 _ID, uint256 _tokens) internal
  {
      idtotokens[_ID] = idtotokens[_ID].add(_tokens);
  }
  
  
  function buyTokens(address beneficiary) public payable 
  {
    require(beneficiary != 0x0 && currentStage != 0);
    require(addId[beneficiary] == currentStage);
    require(validPurchase());
    
    

    uint256 weiAmount = msg.value;
    uint256 price = getprice();
    uint256 tokens = (weiAmount.div(price));
    accountTokensPurchased[beneficiary] = accountTokensPurchased[beneficiary].add(tokens);
    investorweicontributed[beneficiary] = investorweicontributed[beneficiary].add(msg.value);
    tokensdistributed(currentStage, tokens);
    totalweiRaised = totalweiRaised.add(weiAmount);
    
    emit TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
      
  }



  // send ether to the fund collection wallet
  // fund forwarding only allowed if softcape has been reached
   
   function forwardFunds() onlyOwner public {
    require(softCapReached());   
    wallet.transfer(address(this).balance);
    }
  
  
  //function to claim tokens sold in pre-sale/private sale/crowdsale
  
  mapping(address => bool) advisorclaimswitch;
  mapping(address => bool) teamclaimswitch;
   
   function isValidclaim(uint256 _id) internal view returns(bool)
   {
       if(_id == 1 || _id == 3)
       {return true;}
       
       if(_id == 2 || _id ==5 )
       {return now>=timetohitexchange + 12 minutes;}
       
       if(_id == 4 )
       {return now >=timetohitexchange + 6 minutes;}
       
       
       if(_id == 6)
       {return now>=timetohitexchange + 3 minutes;}
       
   }
   
   function gettokenstotransfer(uint256 _id, address _claimer) internal returns(uint256)
   {
       if(_id == 1 || _id == 2 || _id ==3 || _id == 5)
       {
           uint256 memtokens = accountTokensPurchased[_claimer];
           accountTokensPurchased[_claimer] = 0;
           return memtokens ;
           
       }
       
       if(_id == 4)
       {
          
           if(now>=timetohitexchange+ 12 minutes)
           {  uint256 tmtokens = accountTokensPurchased[_claimer];
              accountTokensPurchased[_claimer] = 0;
              return tmtokens ;
           }
           else
           { if(!teamclaimswitch[_claimer])
             {   
                 teamclaimswitch[_claimer] = true;
                 uint256 halftokensteam = accountTokensPurchased[_claimer].div(2);
                 accountTokensPurchased[_claimer] = accountTokensPurchased[_claimer].sub(halftokensteam);
                 return halftokensteam;
             }
             else
             {revert();}
               
           }
       }
       
       
       if(_id == 6)
       {
           if(now>=timetohitexchange+ 9 minutes)
           {
              uint256 adtokens = accountTokensPurchased[_claimer];
              accountTokensPurchased[_claimer] = 0;
              return adtokens ;
           }
           else
           { if(!advisorclaimswitch[_claimer])
             {   
                 advisorclaimswitch[_claimer] = true;
                 uint256 halftokensadvisors = accountTokensPurchased[_claimer].div(2);
                 accountTokensPurchased[_claimer] = accountTokensPurchased[_claimer].sub(halftokensadvisors);
                 return halftokensadvisors;
             }
             else
             {revert();}
               
           }
       }
       
   }
   
   event Claimed(address _claimer, uint256 _amount);
   
   function claimTokens() public 
   {
    
    require(accountTokensPurchased[msg.sender] != 0);
    require(tokensinexchange);
    require(isValidclaim(addId[msg.sender]));
    
    uint256 tokenstotransfer = gettokenstotransfer(addId[msg.sender], address(msg.sender)); 
    
    token.transferFrom(token.owner(), msg.sender, tokenstotransfer);
    
    emit Claimed(address(msg.sender), tokenstotransfer);
    
   } 
    
 
    //function to send tokens to reserve
    function claimTokensreserve() onlyOwner public 
    { require(now>= timetohitexchange);
      uint256 res = RESERVE_TOKENS;
      RESERVE_TOKENS = 0;
      token.transferFrom(token.owner(),reserveaccount, res);
      
    }  
    
  
  function allowrefund() onlyOwner public  
   
   {  require(!softCapReached());
      require(hasendedsale);
      refundAllowed = true;
   
   }
  
  //refund if the softcap is not reached
  function refund() public {
  require(refundAllowed);
  require(hasendedsale);
  require(!softCapReached());
  require(investorweicontributed[msg.sender] > 0);
  require(addId[msg.sender] > 0 && addId[msg.sender] <= 3);

  uint256 current_balance = investorweicontributed[msg.sender];
  investorweicontributed[msg.sender] = 0;
  
  accountTokensPurchased[msg.sender] = 0; // transfer ownership back -TODO
  msg.sender.transfer(current_balance);
  }
  
  
  
  //TODO - check for buy edge cases
  // @return true if the transaction can buy tokens
  function validPurchase() internal constant returns (bool) 
  {
    //bool withinPeriod = now >= START_TIME_CROWDSALE && now <= END_TIME_CROWDSALE;
    bool nonexcessivepurchase;
    bool nonZeroPurchase;
    
    
    if(currentStage == 1)
    { 
        nonexcessivepurchase = (msg.value.div(PRICE_PER_TOKEN_PRESALE)) <= (PRESALE_TOKENS.sub(idtotokens[1]));
        nonZeroPurchase = msg.value != 0 && msg.value>=MIN_INVESTMENT_PRESALE;
        
    }
    
    if(currentStage == 2)
    
    { 
        nonexcessivepurchase = (msg.value.div(PRICE_PER_TOKEN_PRIVATESALE)) <= (PRIVATESALE_TOKENS.sub(idtotokens[2]));
        nonZeroPurchase = msg.value != 0 && msg.value>=MIN_INVESTMENT_PRIVATESALE;
        
    }
    
    if(currentStage == 3)
    
    { 
        nonexcessivepurchase = (msg.value.div(PRICE_PER_TOKEN_CROWDSALE)) <= (CROWDSALE_TOKENS.sub(idtotokens[3]));
        nonZeroPurchase = msg.value != 0 && msg.value>=MIN_INVESTMENT_CROWDSALE;
    }
    
    return  nonZeroPurchase && nonexcessivepurchase;
    
  }
     
  
   
  // @return true if crowdsale event has ended
  
  function hasEnded(bool end) public onlyOwner {
    hasendedsale = end;
    currentStage = 0;
  }
  
  


}
