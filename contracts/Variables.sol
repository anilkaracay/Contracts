// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Variables {
    //state variables
    string public club = "cankaya blockhain";

    function show() public pure returns(uint){
        //local variables
        uint number = 21;
        return number;
    }
    
    function show2() public view returns(address){
        //global variables
        block.difficulty;
        block.gaslimit;
        block.timestamp;
        msg.sender;
        msg.value;
        msg.data;
        return msg.sender;
    }




    // //Fixed-Size Types
    // bool isTrue = false;

    // //type-name;  type-name = deger;

    // int8 number = 12;
    // uint number2 = 12; 
    // address myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // bytes32 name1 = "anil";

    // //Dynamic-Size Types
    // string name2 = "Cankaya Blockchain";
    // bytes name3 = "cankaya bc";
    // uint[] array = [1,2,3,4,5]; // array[3]= 4
    // mapping(uint => address) list;
    // //list[3] = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


    // // User Defined Value Types
    // struct Human {
    //     uint ID;
    //     string name;
    //     uint age;
    //     address  wallet;
    // }
    // // mapping(uint => Human) list2;

    // // Human person1;
    // // person1.ID = 219323215;
    // // person1.name = "ahmet";
    // // person1.age = 20;
    // // person1.wallet = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


    // enum trafficLight {
    //     GREEN,
    //     YELLOW,
    //     RED
    // }

    // // trafficLight.RED

    // 1 wei = 1;
    // 1 ether = 10^18 wei; 
    // 1 gwei = 10^9 wei;

    // 1= 1 seconds;
    // 1 minutes = 60 seconds;
    // 1 hour = 60 minutes = 3600 seconds;
    // 1 days;
    // 1 weeks;
 


   
}