//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract Constructor{ 
    // constant, immutable

    uint public constant number = 5;

    address public immutable owner;
    constructor(){
        owner = msg.sender;
    }

    // function setNumber(uint newNumber) public{
    //     number = newNumber;
    // }
    // uint public immutable x;
    // constructor(uint num){
    //     x = num;
    // }

    // function setX(uint num2) public {
    //     x = num2;

    // }



//     string public tokenName;
//     uint public  totalSupply;


//     constructor(string memory name, uint number){
//         tokenName = name;
//         totalSupply = number;

//     }

//     function set(uint a) public{
//         totalSupply = a; 
//     }
}