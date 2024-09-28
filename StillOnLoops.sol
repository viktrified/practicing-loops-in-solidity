// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LastFailMyAss {
    // a for loop that nest a for loop that nest a while loop
    uint256 public count;

    function myOwnMethod() public returns (uint256) {
        return count++;
     }

    function firstLoop() public returns (uint256) {
        for (uint256 i = 0; i < 5; i++) {+
            for (uint256 j = 0; j < 5; j++) {
                myOwnMethod();

                uint256 k = 0;
                do {
                    myOwnMethod();

                    k++;
                } 
                while (k < 5);
            }
        } return count;
    }
}