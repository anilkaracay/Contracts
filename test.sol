//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract Test{
    string public word = "merhaba";
    bytes32 public wordOne = "merhaba byte";
    bytes2 public wordTwo = "me";
    uint256 public number = 256;
    uint public bigNumber;
    bool data =false ;
    uint[] public list = [1,2,3,4];
    string[] public stringList = ["hello","world"];
    mapping(string => uint) public map;
    mapping(string => bool) public mapOne;
    address public myAdress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ;
    address public sender;
    //uint public balance = 0;
    uint public balance  = address(this).balance;
    address public owner;
    struct person{
        string name;
        string lastName;
        uint8 age;
    }

    modifier onlyOwner(){
       require(owner == msg.sender,"not allowed");
       _;
    }
    
    constructor(){
        number = 244;
        owner = msg.sender ;
      
    }

    function increment() public {
        require(number <254, "number lower that 244");
        sender = msg.sender;
        number +=1;
        bigNumber += 1;
    }
    
    function set(uint8 _number) public returns(uint){
        bigNumber = _number;
        return _number;
    }
    function addBalance() public payable onlyOwner{ 
        balance += msg.value ;
    }
    
}