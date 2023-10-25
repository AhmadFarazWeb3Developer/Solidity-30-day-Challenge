// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Single inheritance: Contract B inherits from contract A.
contract A {
    uint256 public Sum_A = 100; // Initialize Sum_A to 100.
    address public owner = msg.sender; // Store the contract deployer's address as owner.

    // Function returning a string indicating A as the Parent Class.
    function funA() public pure returns (string memory) {
        return " A is the Parent Class";
    }

    // Function to retrieve the value of Sum_A.
    function get_SUM_A() public view returns (uint256) {
        return Sum_A;
    }
}

// Contract B inherits from contract A.
contract B is A {
    // Function returning a string indicating B as a child of A Class.
    function funB() public pure returns (string memory) {
        return " B is the child of A Class  ";
    }

    // Function to calculate and return Sum_B.
    function get_SUM_B() public view returns (uint256) {
        uint256 Sum_B = Sum_A + 100; // Calculate Sum_B.
        return Sum_B;
    }

    // Function to retrieve the owner's address.
    function getOwnerAddress() public view returns (address) {
        return owner;
    }
}

