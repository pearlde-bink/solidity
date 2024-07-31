// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;

contract MyContract{
    int256 public myInt = 1;
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    string public myString = "hello world";
    bytes32 public myBytes32 = "hello world";

    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    struct myStruct {
        uint256 myUint256;
        string myString;
    }

    myStruct public myStruct1 = myStruct(1, "Helo bink");

    function getValue() public pure returns(uint){
        uint value = 1;
        return value;
    }
}
