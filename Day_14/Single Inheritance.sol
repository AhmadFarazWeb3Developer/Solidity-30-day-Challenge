//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Single inheritance :
contract A {
    uint256 public Sum_A = 100;
    address public owner = msg.sender;

    function funA() public pure returns (string memory) {
        return " A is the Parent Class";
    }

    function get_SUM_A() public view returns (uint256) {
        return Sum_A;
    }
}

contract B is A {
    function funB() public pure returns (string memory) {
        return " B is the child of A Class  ";
    }

    function get_SUM_B() public view returns (uint256) {
        uint256 Sum_B = Sum_A + 100;
        return Sum_B;
    }

    function getOnwerAddress() public view returns (address) {
        return owner;
    }
}
