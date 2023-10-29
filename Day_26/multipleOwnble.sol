
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract multiOwnable {
    mapping(address => bool) isOwner; // Track ownership status for each address.
    address[] owners; // Store addresses of all owners.

    constructor() {
        owners.push(msg.sender);
        isOwner[msg.sender] = true;
    }

    // Function to add a new owner. Only callable by current owners.
    function addOwner(address additionalAddress) public onlyOwner {
        owners.push(additionalAddress);
        isOwner[additionalAddress] = true;
    }

    // Modifier allows only owners to execute the function.
    modifier onlyOwner() {
        require(isOwner[msg.sender], "You are not the owner");
        _;
    }

    // Function to retrieve the list of all owners. Only callable by owners.
    function getOwners() public view onlyOwner returns (address[] memory) {
        return owners;
    }
}
