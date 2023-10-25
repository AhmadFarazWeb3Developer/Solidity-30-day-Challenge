// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Contract A is the parent class.
contract A {
    // State variable representing a sum.
    uint256 Sum_A = 100;

    // Function that returns a string.
    function funA() public pure returns (string memory) {
        return " A is the Parent Class";
    }

    // Function to get the value of Sum_A.
    function get_SUM_A() public view returns (uint256) {
        return Sum_A;
    }
}

// Contract B inherits from contract A.
contract B is A {
    // State variable in contract B.
    uint256 Sum_B = Sum_A + 100;

    // Function that returns a string.
    function funB() public pure returns (string memory) {
        return " B is the child of A Class  ";
    }

    // Function to get the value of Sum_B.
    function get_SUM_B() public view returns (uint256) {
        return Sum_B;
    }
}

// Contract C inherits from contract B.
contract C is B {
    // Function that returns a string.
    function funC() public pure returns (string memory) {
        return " C is the child of B Class and A Class   ";
    }

    // Function to get the value of Sum_C.
    function get_SUM_C() public view returns (uint256) {
        // Calculate Sum_C using Sum_B and Sum_A.
        uint256 Sum_C = Sum_B + Sum_A + 100;
        return Sum_C;
    }
}
