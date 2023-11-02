
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract VotingContract {
    
    address ownerOne;
    address ownerTwo;
    mapping(address => bool) vote;

    constructor() {
        ownerOne = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        ownerTwo = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        vote[ownerOne] = false;
        vote[ownerTwo] = false;
    }

    function OwnerOneVote() public {
        require(vote[ownerOne] == false, "Already voted");
        require(
            msg.sender == ownerOne || msg.sender == ownerTwo,
            "Not authorized to vote"
        );
        vote[ownerOne] = true;
    }

    function OwnerTwoVote() public {
        require(vote[ownerTwo] == false, "Already voted");
        require(
            msg.sender == ownerOne || msg.sender == ownerTwo,
            "Not authorized to vote"
        );
        vote[ownerTwo] = true;
    }

    function VotersStatus() public view returns (string memory status) {
        require(vote[ownerOne] == true, "Voter one has not casted vote");
        require(vote[ownerTwo] == true, "Voter two has not casted vote");
        return "Both voters casted votes";
    }
}
