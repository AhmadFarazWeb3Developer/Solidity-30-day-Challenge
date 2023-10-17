// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract A {
    uint256 Sum_A = 100;

    function funA() public pure returns (string memory) {
        return " A is the Parent Class";
    }

    function get_SUM_A() public view returns (uint256) {
        return Sum_A;
    }
}

// Contract B inherits from contract A.
contract B is A {
    uint256 Sum_B = Sum_A + 100;

    function funB() public pure returns (string memory) {
        return " B is the child of A Class  ";
    }

    function get_SUM_B() public view returns (uint256) {
        return Sum_B;
    }
}

// Contract C inherits from contract B.
contract C is B {
    function funC() public pure returns (string memory) {
        return " C is the child of B Class and A Class   ";
    }

    function get_SUM_C() public view returns (uint256) {
        uint256 Sum_C = Sum_B + Sum_A + 100;
        return Sum_C;
    }
}
