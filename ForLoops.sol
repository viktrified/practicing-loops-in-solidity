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

contract AnotherContract {
    // a for loop that loops through user that have voted for buhari
    uint256 public buhari;
    address[] public buhariVotes;

    mapping(address => bool) hasVoted;
    mapping(address => bool) voteChoice;

    function voteBuhari() public {
        require(!hasVoted[msg.sender], "you haven't voted yet");

        buhari++;
        hasVoted[msg.sender] = true;
        voteChoice[msg.sender] = false;
    }

    function anotherLoop() public view returns (bool[] memory) {
        bool[] memory myChoice = new bool[](buhariVotes.length);

        for (uint256 i = 0; i < buhariVotes.length; i++) {
            myChoice[i] = voteChoice[buhariVotes[i]];
        }
        return myChoice;
    }
}

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

contract LastFailMyAss {
    // a for loop that nest a for loop that nest a while loop
    uint256 public count;

    function myOwnMethod() public returns (uint256) {
        return count++;
     }

    function firstLoop() public returns (uint256) {
        for (uint256 i = 0; i < 5; i++) {
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
