// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

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
