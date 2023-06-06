# MyToken

This Solidity program is a simple "MyToken" program that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to making their own tokens in Solidity and want to get a feel for how it works.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has three public variables that store the details about coin (Token Name, Token Abbreviation, Total Supply). It has a mapping of addresses to balances. It has a mint function that takes two parameters: an address and a value. The function then increases the total supply by that number and increases the balance of the address by that amount. It also has  burn function, which works the opposite of the mint function, as it will destroy tokens. It will take an address and value just like the mint functions. It will then deduct the value from the total supply and from the balance of the address.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
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
```


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the sayHello function. Click on the "HelloWorld" contract in the left-hand sidebar, and then click on the "sayHello" function. Finally, click on the "transact" button to execute the function and retrieve the "Hello World!" message.

## Authors

Anand Raj Singh
[@anandrajsingh](https://twitter.com/Anand_Raj_)

