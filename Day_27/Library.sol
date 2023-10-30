// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

library Math {
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return (a + b);
    }

    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return (a * b);
    }

    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Second number must not be zero");
        return a / b;
    }

    function mod(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Second number must not be zero");
        return a % b;
    }
}

contract usingLibrary {
    using Math for uint256;

    function sum(uint256 _a, uint256 _b) public pure returns (uint256) {
        return Math.add(_a, _b);
    }

    function multiply(uint256 _a, uint256 _b) public pure returns (uint256) {
        return Math.multiply(_a, _b);
    }

    function divide(uint256 _a, uint256 _b) public pure returns (uint256) {
        return Math.divide(_a, _b);
    }

    function modulus(uint256 _a, uint256 _b) public pure returns (uint256) {
        return Math.mod(_a, _b);
    }
}
