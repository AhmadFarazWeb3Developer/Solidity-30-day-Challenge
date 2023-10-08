// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Loops {
    uint256 count = 1;
    uint256 multiply = 1;
    uint256 oddSum = 0;
    uint256 evenSum = 0;

    // Function to perform even addition
    function evenAddition(uint256 size) public {
        for (uint256 i = 0; i < size; i++) {
            if (i % 2 == 0) {
                evenSum = evenSum + i;
            }
        }
    }

    // Function to get the result of even addition
    function getEvenAdd() public view returns (uint256) {
        return evenSum;
    }

    // Function to perform odd addition
    function oddAddition(uint256 size) public {
        uint256 i = 1;
        while (size != 0) {
            if (i % 2 != 0) {
                oddSum = oddSum + i;
            }
            i++;
            size--;
        }
    }

    // Function to get the result of odd addition
    function getoddAdd() public view returns (uint256) {
        return oddSum;
    }

    // Function to perform multiplication
    function Multiply() public {
        do {
            multiply = multiply * count;
            count++;
        } while (count != 5);
    }

    // Function to get the result of multiplication
    function getMult() public view returns (uint256) {
        return multiply;
    }
}
