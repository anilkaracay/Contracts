//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract Functions{
    //Public, Private, External, Private
    //Public: Hem disardan kullanicilar cagirabilir hem de kontrat cagirabilir

    function sum(uint a, uint b) public pure returns(uint){
        return a+b;
    }

    function sum2(uint c, uint d) public pure returns (uint) {
        return sum(c,d);
    }

    function publicKeyword() public pure returns(string memory){
        return "Bu bir public fonk";
    }

    function callPublicKeyword() public pure returns(string memory ){
        return publicKeyword();
    }

    //Private: Sadece bu kontrat ulasabilir. Disaridan kimse ulasamaz

    function privateKeyword() private pure returns(string memory){
        return "Private fonk";
    }

    function callprivateKeyword() public pure returns(string memory){
        return privateKeyword();
    }


    // Internal: Sadece miras alan kontratlar bu fonk cagirabilir. Di;aridaki kullanici cagiramaz
    function internalKeyword() internal pure returns(string memory){
        return "Internal fonksiyon";
    }

    function callInternalKeyword() public pure returns(string memory){
        return internalKeyword() ;
    }

    //External: Disaridan cagrilabilir fakat kontrat icersinden cagrilmaz.

    function externalKeyword() external pure returns (string memory){
        return "External Func";
    }

   // function callExternalKeyword() public pure returns (string memory){
       // return externalKeyword();
   // }


    // uint public x = 4;


    // function setX(uint newX) public{
    //     x = newX;
    // }
    
    // function sum(uint y) public {
    //     x = x+y;
    // }

    // function add(uint a, uint b) public view returns(uint){
    //     return a + b + block.timestamp;
    // }


    // function add2(uint a, uint b) public pure returns (uint) {
    //     return a+b;
    // }





    // uint public luckyNumber= 9;

    // // function displayNumber() public view returns(uint) {
    // //     return luckyNumber;
    // // }  


    // function setNumber(uint number)public {
    //     luckyNumber = number;
    // }

    // function trying() public pure returns(uint x,bool y ,bool z){
    //     x = 6; 
    //     y=false;
    //     z=true;
    // }


    


}