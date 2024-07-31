// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;

contract Counter {
    uint public count = 0;

    function incrementCount() public {
        count ++;
    }
}