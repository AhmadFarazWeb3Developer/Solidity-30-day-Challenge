
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract tranferOwner {

    struct ActualOwner {
        string name;
        string location;
    }

    struct NewOwner {
        string name;
        string location;
    }

    mapping(address => ActualOwner) public actualOwnerDetails;
    address owner;
    mapping(address => NewOwner) newOwnerDetails;

    constructor() {
        owner = msg.sender;
        actualOwnerDetails[msg.sender].name = "Ahmad Faraz";
        actualOwnerDetails[msg.sender].location = "Pakistan";
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "You are not the owner");
        _;
    }

    function transferOwnership(address newOwnerAddress,string memory _name,string memory _location)
     public onlyOwner {
        newOwnerDetails[newOwnerAddress].name = _name;
        newOwnerDetails[newOwnerAddress].location = _location;
    }

    function getNewOwnerDetails(address newOwnerAddress) public view returns 
     (string memory name, string memory location) {
        require(msg.sender == newOwnerAddress, "You are not the new owner");
        return (newOwnerDetails[newOwnerAddress].name, newOwnerDetails[newOwnerAddress].location);
    }
}

