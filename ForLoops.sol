// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract JustFuckingDo {
    function loop() public pure returns (uint[10] memory) {
        uint[10] memory numbers;
        for (uint256 i = 0; i < 10; i++) {
            numbers[i] = i + 1;
            if (i == 4) {
                break;
            }
        }
        return numbers;
    }
}






