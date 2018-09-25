# Linkchain_Token

## Deployment steps doc : 
https://docs.google.com/document/d/1ev0RZ6goeNlgWCp1w2jYCwEtPkDM9K8A23qyg_fFLHs/edit?usp=sharing
* [LinkchainToken](#linkchaintoken)
  * [name](#function-name)
  * [approve](#function-approve)  
  * [totalSupply](#function-totalsupply)  
  * [transferFrom](#function-transferfrom)
  * [decimals](#function-decimals)
  * [unpause](#function-unpause) 
  * [burn](#function-burn) 
  * [paused](#function-paused)  
  * [balanceOf](#function-balanceof) 
  * [pause](#function-pause)   
  * [owner](#function-owner)
  * [increaseApproval](#function-increaseapproval)
  * [decreaseApproval](#function-decreaseapproval)  
  * [symbol](#function-symbol)
  * [setStopRecieve](#function-setstoprecieve)  
  * [transfer](#function-transfer)  
  * [allowance](#function-allowance)
  * [renounceOwnership](#function-renounceownership)
  * [transferOwnership](#function-transferownership)  
  * [Pause](#event-pause)
  * [Unpause](#event-unpause)
  * [OwnershipTransferred](#event-ownershiptransferred)
  * [OwnershipRenounced](#event-ownershiprenounced)
  * [Transfer](#event-transfer)
  * [Approval](#event-approval)
  * [Burn](#event-burn)  
* [BasicToken](#erc20basic)
  * [balanceOf](#function-balanceof)
  * [totalSupply](#function-totalsupply)
  * [transfer](#function-transfer)
  * [Transfer](#event-transfer)
* [ERC20Basic](#erc20basic)
  * [totalSupply](#function-totalsupply)
  * [balanceOf](#function-balanceof)
  * [transfer](#function-transfer)
  * [Transfer](#event-transfer)
* [ERC20](#erc20)
  * [approve](#function-approve)
  * [transferFrom](#function-transferfrom)
  * [allowance](#function-allowance)
  * [totalSupply](#function-totalsupply)
  * [balanceOf](#function-balanceof)
  * [transfer](#function-transfer)
  * [Transfer](#event-transfer)
  * [Approval](#event-approval)  
* [Ownable](#ownable)  
  * [renounceOwnership](#function-transferownership)
  * [transferOwnership](#function-transferownership)
  * [OwnershipTransferred](#event-ownershiptransferred)
  * [OwnershipRenounced](#event-ownershiprenounced)
* [Pausable](#pausable)
  * [unpause](#function-unpause)
  * [paused](#function-paused)
  * [pause](#function-pause)
  * [Pause](#event-pause)
  * [renounceOwnership](#function-transferownership)
  * [transferOwnership](#function-transferownership)
  * [OwnershipTransferred](#event-ownershiptransferred)
  * [OwnershipRenounced](#event-ownershiprenounced)
  * [Unpause](#event-unpause) 
* [SafeMath](#safemath)
* [StandardToken](#standardtoken)
  * [approve](#function-approve)
  * [totalSupply](#function-totalsupply)
  * [transferFrom](#function-transferfrom)  
  * [increaseApproval](#function-increaseapproval)
  * [decreaseApproval](#function-decreaseapproval)
  * [allowance](#function-allowance)  
  * [Approval](#event-approval)
  * [Transfer](#event-transfer)
* [BurnableToken](#burnabletoken)  
  * [approve](#function-approve)
  * [burn](#function-burn)
  * [totalSupply](#function-totalsupply)
  * [transferFrom](#function-transferfrom)  
  * [increaseApproval](#function-increaseapproval)
  * [decreaseApproval](#function-decreaseapproval)
  * [allowance](#function-allowance)  
  * [Approval](#event-approval)
  * [Transfer](#event-transfer)
  * [Burn](#event-burn)
  

# LinkchainToken


## *function* name

LinkchainToken.name() `view` `06fdde03`





## *function* approve

LinkchainToken.approve(_spender, _value) `nonpayable` `095ea7b3`

> Approve the passed address to spend the specified amount of tokens on behalf of msg.sender.   * To change the approve amount you first have to reduce the addresses' allowance to zero by calling approve(_spender, 0) if it is not already 0 to mitigate the race condition described here: https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _spender | The address which will spend the funds. |
| *uint256* | _value | The amount of tokens to be spent. |




## *function* totalSupply

LinkchainToken.totalSupply() `view` `18160ddd`



## *function* transferFrom

LinkchainToken.transferFrom(_from, _to, _value) `nonpayable` `23b872dd`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _from | undefined |
| *address* | _to | undefined |
| *uint256* | _value | undefined |


## *function* decimals

LinkchainToken.decimals() `view` `313ce567`





## *function* unpause

LinkchainToken.unpause() `nonpayable` `3f4ba83a`





## *function* burn

LinkchainToken.burn(_value) `nonpayable` `42966c68`

> Burns a specific amount of tokens. To be called by the owner if the softcap is not reached or in case there are unsold tokens left after the sale ends.

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* | _value | The amount of token to be burned. |





## *function* paused

LinkchainToken.paused() `view` `5c975abb`




## *function* balanceOf

LinkchainToken.balanceOf(_owner) `view` `70a08231`

> Returns number of tokens owned by given address

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _owner | Address of token owner |

Outputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* |  | undefined |




## *function* pause

LinkchainToken.pause() `nonpayable` `8456cb59`




Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* |  | undefined |




## *function* owner

LinkchainToken.owner() `view` `8da5cb5b`




## *function* increaseApproval

LinkchainToken.increaseApproval(_spender, _addedValue) `nonpayable` `d73dd623`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _spender | undefined |
| *uint256* | _addedValue | undefined |


## *function* decreaseApproval

LinkchainToken.decreaseApproval(_spender, _subtractedValue) `nonpayable` `66188463`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _spender | undefined |
| *uint256* | _subtractedValue | undefined |




## *function* symbol

LinkchainToken.symbol() `view` `95d89b41`


## *function* setStopReceive

LinkchainToken.setStopReceive() `nonpayable` `95d89b41`

> If any account wants to stop recieving tokens





## *function* transfer

LinkchainToken.transfer(_to, _value) `nonpayable` `a9059cbb`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _to | undefined |
| *uint256* | _value | undefined |





## *function* allowance

LinkchainToken.allowance(_owner, _spender) `view` `dd62ed3e`

> Function to check the amount of tokens that an owner allowed to a spender.

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _owner | address The address which owns the funds. |
| *address* | _spender | address The address which will spend the funds. |

Outputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* |  | undefined |





## *function* transferOwnership

LinkchainToken.transferOwnership(newOwner) `nonpayable` `f2fde38b`

> Allows the current owner to transfer control of the contract to a newOwner.

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | newOwner | The address to transfer ownership to. |


## *function* renounceOwnership

LinkchainToken.renounceOwnership() `nonpayable` `715018a6`

> Allows the current owner to transfer control of the contract to null.




## *event* Pause

LinkchainToken.Pause() 



## *event* Unpause

LinkchainToken.Unpause() 



## *event* OwnershipTransferred

LinkchainToken.OwnershipTransferred(from, _to) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | from | indexed |
| *address* | _to | indexed |


## *event* OwnershipRenounced

LinkchainToken.renounceOwnership() 



## *event* Transfer

LinkchainToken.Transfer(from, to, value) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | from | indexed |
| *address* | to | indexed |
| *uint256* | value | not indexed |

## *event* Approval

LinkchainToken.Approval(owner, spender, value) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | owner | indexed |
| *address* | spender | indexed |
| *uint256* | value | not indexed |

## *event* Burn

LinkchainToken.Burn(from, value) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | from | indexed |
| *uint256* | value | not indexed |



---
# ERC20


## *function* approve

ERC20.approve(spender, value) `nonpayable` `095ea7b3`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | spender | undefined |
| *uint256* | value | undefined |


## *function* totalSupply

ERC20.totalSupply() `view` `18160ddd`





## *function* transferFrom

ERC20.transferFrom(from, to, value) `nonpayable` `23b872dd`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | from | undefined |
| *address* | to | undefined |
| *uint256* | value | undefined |


## *function* balanceOf

ERC20.balanceOf(who) `view` `70a08231`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | who | undefined |


## *function* transfer

ERC20.transfer(to, value) `nonpayable` `a9059cbb`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | to | undefined |
| *uint256* | value | undefined |


## *function* allowance

ERC20.allowance(owner, spender) `view` `dd62ed3e`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | owner | undefined |
| *address* | spender | undefined |

## *event* Transfer

ERC20.Transfer(from, to, value) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | from | indexed |
| *address* | to | indexed |
| *uint256* | value | not indexed |

## *event* Approval

ERC20.Approval(owner, spender, value) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | owner | indexed |
| *address* | spender | indexed |
| *uint256* | value | not indexed |




---
# Ownable



## *function* owner

Ownable.owner() `view` `8da5cb5b`



## *function* transferOwnership

Ownable.transferOwnership(_newOwner) `nonpayable` `f2fde38b`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _newOwner | undefined |


## *function* renounceOwnership

Ownable.renounceOwnership() `nonpayable` `715018a6`



## *event* OwnershipTransferred

Ownable.OwnershipTransferred(from, _to) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | from | indexed |
| *address* | _to | indexed |

## *event* OwnershipRenounced

Ownable.OwnershipRenounced(from) 


---
# Pausable


## *function* unpause

Pausable.unpause() `nonpayable` `3f4ba83a`





## *function* paused

Pausable.paused() `view` `5c975abb`





## *function* pause

Pausable.pause() `nonpayable` `8456cb59`




## *function* owner

Pausable.owner() `view` `8da5cb5b`



## *function* renounceOwnership

Pausable.renounceOwnership() `nonpayable` `715018a6`



## *function* transferOwnership

Pausable.transferOwnership(_newOwner) `nonpayable` `f2fde38b`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _newOwner | undefined |

## *event* Pause

Pausable.Pause() 



## *event* Unpause

Pausable.Unpause() 



## *event* OwnershipTransferred

Pausable.OwnershipTransferred(from, _to) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | from | indexed |
| *address* | _to | indexed |


## *event* OwnershipRenounced

Pausable.OwnershipRenounced(from) 



---
# SafeMath


---
# StandardToken


## *function* approve

StandardToken.approve(_spender, _value) `nonpayable` `095ea7b3`

> Approve the passed address to spend the specified amount of tokens on behalf of msg.sender.   * Beware that changing an allowance with this method brings the risk that someone may use both the old and the new allowance by unfortunate transaction ordering. One possible solution to mitigate this race condition is to first reduce the spender's allowance to 0 and set the desired value afterwards: https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _spender | The address which will spend the funds. |
| *uint256* | _value | The amount of tokens to be spent. |


## *function* totalSupply

StandardToken.totalSupply() `view` `18160ddd`




## *function* transferFrom

StandardToken.transferFrom(_from, _to, _value) `nonpayable` `23b872dd`

> Allows allowed third party to transfer tokens from one address to another. Returns success

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _from | Address from where tokens are withdrawn |
| *address* | _to | Address to where tokens are sent |
| *uint256* | _value | Number of tokens to transfer |

Outputs

| **type** | **name** | **description** |
|-|-|-|
| *bool* |  | undefined |



## *function* balanceOf

StandardToken.balanceOf(_owner) `view` `70a08231`

> Returns number of tokens owned by given address

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _owner | Address of token owner |

Outputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* |  | undefined |



## *function* increaseApproval

StandardToken.increaseApproval(_spender, _addValue) `nonpayable` `d73dd623`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _spender | undefined |
| *uint256* | _addValue | undefined |


## *function* decreaseApproval

StandardToken.decreaseApproval(_spender, _subtractValue) `nonpayable` `66188463`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _spender | undefined |
| *uint256* | _addValue | undefined |


## *function* transfer

StandardToken.transfer(_to, _value) `nonpayable` `a9059cbb`

> Transfers sender's tokens to a given address. Returns success

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _to | Address of token receiver |
| *uint256* | _value | Number of tokens to transfer |

Outputs

| **type** | **name** | **description** |
|-|-|-|
| *bool* | success | undefined |

## *function* allowance

StandardToken.allowance(_owner, _spender) `view` `dd62ed3e`

> Function to check the amount of tokens that an owner allowed to a spender.

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _owner | address The address which owns the funds. |
| *address* | _spender | address The address which will spend the funds. |

Outputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* |  | undefined |

## *event* Transfer

StandardToken.Transfer(from, to, value) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | from | indexed |
| *address* | to | indexed |
| *uint256* | value | not indexed |

## *event* Approval

StandardToken.Approval(owner, spender, value) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | owner | indexed |
| *address* | spender | indexed |
| *uint256* | value | not indexed |



# BurnableToken


## *function* approve

BurnableToken.approve(_spender, _value) `nonpayable` `095ea7b3`

> Approve the passed address to spend the specified amount of tokens on behalf of msg.sender.   * Beware that changing an allowance with this method brings the risk that someone may use both the old and the new allowance by unfortunate transaction ordering. One possible solution to mitigate this race condition is to first reduce the spender's allowance to 0 and set the desired value afterwards: https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _spender | The address which will spend the funds. |
| *uint256* | _value | The amount of tokens to be spent. |


## *function* totalSupply

BurnableToken.totalSupply() `view` `18160ddd`




## *function* transferFrom

BurnableToken.transferFrom(_from, _to, _value) `nonpayable` `23b872dd`

> Allows allowed third party to transfer tokens from one address to another. Returns success

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _from | Address from where tokens are withdrawn |
| *address* | _to | Address to where tokens are sent |
| *uint256* | _value | Number of tokens to transfer |

Outputs

| **type** | **name** | **description** |
|-|-|-|
| *bool* |  | undefined |

## *function* burn

BurnableToken.burn(_value) `nonpayable` `42966c68`

> Burns a specific amount of tokens.

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* | _value | The amount of token to be burned. |


## *function* balanceOf

BurnableToken.balanceOf(_owner) `view` `70a08231`

> Returns number of tokens owned by given address

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _owner | Address of token owner |

Outputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* |  | undefined |



## *function* increaseApproval

BurnableToken.increaseApproval(_spender, _addValue) `nonpayable` `d73dd623`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _spender | undefined |
| *uint256* | _addValue | undefined |


## *function* decreaseApproval

BurnableToken.decreaseApproval(_spender, _subtractValue) `nonpayable` `66188463`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _spender | undefined |
| *uint256* | _addValue | undefined |


## *function* transfer

BurnableToken.transfer(_to, _value) `nonpayable` `a9059cbb`

> Transfers sender's tokens to a given address. Returns success

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _to | Address of token receiver |
| *uint256* | _value | Number of tokens to transfer |

Outputs

| **type** | **name** | **description** |
|-|-|-|
| *bool* | success | undefined |

## *function* allowance

BurnableToken.allowance(_owner, _spender) `view` `dd62ed3e`

> Function to check the amount of tokens that an owner allowed to a spender.

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _owner | address The address which owns the funds. |
| *address* | _spender | address The address which will spend the funds. |

Outputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* |  | undefined |

## *event* Transfer

BurnableToken.Transfer(from, to, value) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | from | indexed |
| *address* | to | indexed |
| *uint256* | value | not indexed |



## *event* Approval

BurnableToken.Approval(owner, spender, value) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | owner | indexed |
| *address* | spender | indexed |
| *uint256* | value | not indexed |


## *event* Burn

BurnableToken.Burn(burner, value) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | from | indexed |
| *address* | to | indexed |
| *uint256* | value | not indexed |






---
## Token Sale Contract (Crowdsale) :-
* [Owned](#owned)
  * [renounceOwnership](#function-renounceownership)
  * [owner](#function-owner)
  * [transferOwnership](#function-transferownership)
  * [OwnershipTransferred](#event-ownershiptransferred)
  * [OwnershipRenounced](#event-ownershiptransferred)
* [SafeMath](#safemath)
* [Crowdsale](#Crowdsale)
  * [addAddressToWhitelist](#function-addAddressToWhitelist)
  * [addWhitelists](#function-addWhitelists)
  * [allowrefund](#function-allowrefund)
  * [buyTokens](#function-buyTokens)
  * [claimTokens](#function-claimTokens)
  * [claimTokensreserve](#function-claimTokensreserve)
  * [distributetokenstomembers](#function-distributetokenstomembers)
  * [forwardFunds](#function-forwardFunds) 
  * [getprice](#function-getprice)
  * [gettokenstotransfer](#function-gettokenstotransfer)
  * [hardcap](#function-hardcap)
  * [hasEnded](#function-hasEnded)
  * [hasendedsale](#function-hasendedsale)
  * [isValidclaim](#function-isValidclaim)
  * [owner](#function-owner)
  * [removemember](#function-removemember)  
  * [removeAddressFromWhitelist](#function-removeaddressfromwhitelist)
  * [renounceOwnership](#function-renounceownership)
  * [refund](#function-refund)
  * [setsoftcap](#function-setsoftcap)
  * [sethardcap](#function-sethardcap)
  * [setCurrentStage](#function-setCurrentStage)
  * [softCapReached](#function-softCapReached)
  * [softcap](#function-softcap)
  * [token](#tokensavailableinexchange)
  * [tokensavailableinexchange](#tokensavailableinexchange)
  * [tokensdistributed](#function-tokensdistributed)
  * [transferOwnership](#function-transferownership)  
  * [totalweiraised](#function-totalweiraised)
  * [valid_distribution](#function-valid_distribution)
  * [validPurchase](#function-validPurchase)
  * [wallet](#function-wallet)
  * [TokenPurchase](#event-TokenPurchase)
  * [WhitelistedAddressAdded](#event-WhitelistedAddressAdded)
  * [WhitelistedAddressRemoved](#event-WhitelistedAddressRemoved)
  * [CurrentStageUpdated](#event-CurrentStageUpdated)
  * [Claimed](#event-claimed)
  * [OwnershipTransferred](#event-ownershiptransferred)
  * [OwnershipRenounced](#event-ownershiprenounced)
  
# Ownable



## *function* owner

Crowdsale.owner() `view` `8da5cb5b`




## *function* transferOwnership

Crowdsale.transferOwnership(_newOwner) `nonpayable` `f2fde38b`


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _newOwner | undefined |


## *function* renounceOwnership

Crowdsale.renounceOwnership() `nonpayable` `715018a6`




## *event* OwnershipTransferred

Crowdsale.OwnershipTransferred(from, _to) 

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | from | indexed |
| *address* | _to | indexed |



## *event* OwnershipRenounced

Crowdsale.OwnershipRenounced(from) 



---
# SafeMath


---
# Crowdsale


## *function* tokensavailableinexchange

Crowdsale.tokensavailableinexchanges(status) `nonpayable` `01567739`

> To set the time at which tokens hit the exchanges. Only after this period, the claiming 
of tokens can be done. This function also has a reset option if called by mistake. But along with 
setting the 'status' agrument to false, the owner has to call the 'hasEnded()' function with a false argument if the sale was ongoing and then set the stage accordingly.

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *bool* | status | undefined |


## *function* setsoftcap
Crowdsale.setsoftcap (softcap) `nonpayable` `0799f2d3`

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* | softCap | undefined |



## *function* sethardcap

Crowdsale.sethardcap (hardCap) `nonpayable` `07c24923`

| **type** | **name** | **description** |
|-|-|-|
| *uint256* | hardCap | undefined |



## *function* distributetokenstomembers

Crowdsale.distributetokenstomembers (members,id,amount) `nonpayable` `0fb84ff2`

| **type** | **name** | **description** |
|-|-|-|
| *address[]* | members | undefined |
| *uint256* | Id | undefined 
| *uint256* | amount | undefined 



## *function* valid_distribution

Crowdsale.valid_distribution (_id, _amount, length) `view` `1726cbc8`

> Determines if the token distribution to members is valid or not

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* | _id | undefined |
| *uint256* | _amount | undefined |
| *uint256* | length | undefined |

## *function* removemember

Crowdsale.removemember (_member) `nonpayable` `19165587`

**Removes the tokens distributed to the member.**


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _member | address of the member to be removed |


## *function* addAddressToWhitelist

Crowdsale.addAddressToWhitelist (_beneficiary, _stage) `nonpayable` `e17039b8`

> Adds the given address to the whitelist against the stage.

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _beneficiary | address to be whitelisted |
| *uint256* | _stage | stage for which the address has to be whitelisted |



## *function* addWhitelists

Crowdsale.addWhitelists (contributors, _stage) `nonpayable` `1ae63bf0`

> Adds the given addressses to the whitelist against the stage.

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address[]* | contributors | array of addresses to be whitelisted |
| *uint256* | _stage | stage for which the addresses has to be whitelisted |



## *function* removeAddressFromWhitelist
Crowdsale.removeAddressFromWhitelist (_addr) `nonpayable` `286dd3f5`

**Allows the owner to remove a whitelisted account.**


Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | _addr | address of the account to be removed from whitelist|


## *function* setCurrentStage
Crowdsale.setCurrentStage (_stage) `nonpayable` `38c67b73`

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* | _stage | undefined |



## *function* softCapReached

Crowdsale.softCapReached () `view` `2b9edee9`





## *function* buyTokens

Crowdsale.buyTokens () `payable` `ec8ac4d8`

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | beneficiary | undefined |




## *function* forwardFunds

Crowdsale.forwardFunds () `nonpayable` `9d735286`

> To forward funds to the wallet where the collected money is to be stored




## *function* claimTokens

Crowdsale.claimTokens () `nonpayable` `48c54b9d`

> Internally checks for how much tokens to give to the account which is calling the function.




## *function* claimTokensreserve
Crowdsale.claimTokensreserve () `nonpayable` `fb2f1982`




## *function* allowrefund
Crowdsale.allowrefund (amount) `nonpayable` `4f84575d`



## *function*  refund

Crowdsale.refund () `nonpayable` `590e1ae3`

> To be called by an account demanding refund

## *function*  hasendedsale

Crowdsale.hasendedsale() `view` `82b39d22`

> To be called by an account demanding refund

## *function* hasEnded

Crowdsale.hasEnded (end) `nonpayable` `7183f4c8`

> To determine the status of the sale

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *bool* | end | undefined |


## *event* TokenPurchase

Crowdsale.TokenPurchase(payer, tokenbuyeraccount, weiamount, tokens) 


## *event* WhitelistedAddressAdded

Crowdsale.WhitelistedAddressAdded(beneficiary, stage) 


## *event* WhitelistedAddressRemoved

Crowdsale.WhitelistedAddressRemoved(address) 


## *event* OwnershipRenounced

Crowdsale.OwnershipRenounced(from) 


## *event* Claimed

Crowdsale.Claimed(from) 


## *event* CurrentStageUpdated

Crowdsale.CurrentStageUpdated(stage) 


## *event* OwnershipTransferred

Crowdsale.OwnershipTransferred(from, _to) 


## *event* OwnershipRenounced

Crowdsale.OwnershipRenounced(from) 



---
