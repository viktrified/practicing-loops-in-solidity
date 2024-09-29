// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SeriousContract {
    // a for loop that returns the clicked() function five times.
    uint256 public count;
    string public statement = "clicked() has been called five times";

    function clicked() public returns (uint256) {
        return count++;
    }

    function theFor() public returns (uint256, string memory) {
        for (uint256 i = 0; i < 5; i++) {
            clicked();
        }
        return (count, statement);
    }
}
