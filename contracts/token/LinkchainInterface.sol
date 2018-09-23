pragma solidity ^0.4.24;


contract LinkchainInterface {
    
    
    
    
    //Owner of the contract
    address public owner;
    
    
    

    /// @notice send `_value` token to `_to` from `_from` on the condition it is approved by `_from`
    /// @param _from The address of the sender
    /// @param _to The address of the recipient
    /// @param _value The amount of token to be transferred
    /// @return Whether the transfer was successful or not
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);

   
}
