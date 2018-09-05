pragma solidity ^0.4.24;

import './token/StandardToken.sol';
import './token/BurnableToken.sol';
import './token/PausableToken.sol';
import './ownership/Ownable.sol';

contract LinkchainToken is StandardToken, Ownable, BurnableToken, PausableToken {

    string public constant name = "Linkchain Token";
    string public constant symbol = "LNK";
    uint8 public constant decimals = 18;


    constructor() public {
    totalSupply = 700000000;
    balances[owner] = totalSupply;
    }


    // --------------------------------------------------------

    function transferFrom(address _from, address _to, uint256 _value) public whenNotPaused returns (bool) {
        bool result = super.transferFrom(_from, _to, _value);
        return result;
    }

    mapping (address => bool) stopReceive;

    function setStopReceive(bool stop) public {
        stopReceive[msg.sender] = stop;
    }

    function getStopReceive() constant public returns (bool) {
        return stopReceive[msg.sender];
    }

    function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
        require(!stopReceive[_to]);
        bool result = super.transfer(_to, _value);
        return result;
    }


    
    function burn(uint256 _value) public {
        super.burn(_value);
    }

    // --------------------------------------------------------

    
    function pause() onlyOwner whenNotPaused public {
        super.pause();
    }

   
    function unpause() onlyOwner whenPaused public {
        super.unpause();
    }

    function transferAndCall(address _recipient, uint256 _amount, bytes _data) public {
        require(_recipient != address(0));
        require(_amount <= balances[msg.sender]);

        balances[msg.sender] = balances[msg.sender].sub(_amount);
        balances[_recipient] = balances[_recipient].add(_amount);

        require(TokenRecipient(_recipient).tokenFallback(msg.sender, _amount, _data));
        emit Transfer(msg.sender, _recipient, _amount);
    }

}


  
