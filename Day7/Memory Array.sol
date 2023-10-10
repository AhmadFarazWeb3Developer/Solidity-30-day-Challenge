// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract memoryArray {
    // Function to return an element from an integer array
    function intArray(uint256 index) public pure returns (uint256) {
        uint256[] memory arr = new uint256[](3);
        arr[0] = 12;
        arr[1] = 24;
        arr[2] = 48;
        return arr[index];
    }
    // Function to return an element from a string array
    function strArray(uint256 index) public pure returns (string memory) {
        string[] memory arr = new string[](3);
        arr[0] = "A B C";
        arr[1] = "D E F";
        arr[2] = "G H I";
        return arr[index];
    }
    // Function to calculate the sum of numbers up to a given range
    function Sum(uint256 range) public pure returns (uint256) {
        // Dynamically declaration of memory array
        uint256[] memory arr = new uint256[](range);
        uint256 sum = 0;
        for (uint256 i = 0; i < range; i++) {
            sum = sum + i;
            arr[i] = (sum);
        }
        return sum;
    }
    // Function to multiply two numbers and return the result
    function Multipy(uint256 num1, uint256 num2) public pure returns (uint256) {
        uint256[] memory arr = new uint256[](2);
        arr[0] = num1;
        arr[1] = num2;
        return arr[0] * arr[1];
    }
}
