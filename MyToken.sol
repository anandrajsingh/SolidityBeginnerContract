// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken{
    string public tokenName = "DOGESH";
    string public tokenAbbreviation = "DGE";
    uint public tokenSupply = 0;

    mapping (address => uint) public balances;

    function mint(address _address, uint _value) public {
        tokenSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint _value) public{
        if(balances[_address] >= _value){
            tokenSupply -= _value;
        balances[_address] -= _value;
        }
    }
}