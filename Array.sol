// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;

contract MyContract{
    uint[] public uintArray = [1, 2, 3];
    uint256[][] public array2D = [[1, 2, 3], [4, 5, 6]];
    string[] public stringArray = ["a", "b", "c"];

    function changeArray() public {
        uintArray = [2, 3, 4];
    }

    function addValue(string memory _val) public {
        stringArray.push(_val);
    }

    function returnIntArray() public view returns(uint[] memory){
        return uintArray;
    }

    function returnStringArray() public view returns(string[] memory){
        return stringArray;
    }
}
