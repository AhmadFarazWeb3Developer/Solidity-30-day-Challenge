// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract errorHandling {
    address public owner;
    mapping(address => uint256) public balances;

    // Constructor to set the owner when the contract is deployed
    constructor() {
        owner = msg.sender;
    }

    // Function for require
    function onlyOwnerCall() public view {
        require(msg.sender == owner, "Only owner can call this function");
    }

    // Function for assert
    function withdraw(uint256 amount) public pure {
        assert(amount != 0);
    }

    // Function for revert
    function checkAmount(uint256 amount) public pure returns (uint256) {
        if (amount == 0) {
            revert("Amount cannot be Zero");
        } else {
            return amount;
        }
    }

    // Function for transferring ownership
    function transferOwnership(address newOwner) public {
        require(
            msg.sender == owner,
            "Only current owner can transfer ownership"
        );
        owner = newOwner;
    }

    // Function for depositing funds
    function deposit() public payable {
        require(msg.value > 0, "Must deposit a non-zero amount");
        balances[msg.sender] += msg.value;
    }
}
