//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract SaveCanaria{

    uint public minFund;
    string public name;
    string public desc;
    mapping(address => bool) public funder;
    //address[] public funder;
    uint8 public funderCount;
    struct Request{
        string description;
        uint value;
        address recipient;
        bool completed;
        uint approversCount;
    }
    address public owner;

    Request[] public request;

    modifier onlyOwner

    constructor(string memory _name, string memory _desc, uint _minFund){
        owner = msg.sender;
        name = _name;
        desc = _desc;        
        minFund = _minFund;  
         
    }

    function getFund() public payable{
        require(msg.value >= minFund,"not min value");
      //require(funder(msg.sender) == false,"already added");
        funder[msg.sender] = true;
        funderCount++;
        //funder.push(msg.sender);
    }
    function createRequest(string memory _description, uint _value, address _recipient) public{
        Request storage newRequest = request.push();
        newRequest.description = _description;
        newRequest.value = _value;
    }
}