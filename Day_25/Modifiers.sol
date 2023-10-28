// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract ContractWithModifier {
    struct Person {
        string Name;
        uint256 Id;
    }

    address public Owner;
    mapping(address => Person) Details;

    constructor() {
        Owner = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == Owner, " You are not the owner");
        _;
    }

    // If the owner has been changed, then the isOwner modifier
    // would be called and "You are not the owner" would be printed.
    
    function setOWnerDetails(string memory _name, uint256 _id) public isOwner {
        Details[Owner].Name = _name;
        Details[Owner].Id = _id;
    }

    // Only the owner can return the details
    function getOwnerDetails() public view isOwner returns (string memory, uint256) {
        return (Details[Owner].Name, Details[Owner].Id);
    }
}

