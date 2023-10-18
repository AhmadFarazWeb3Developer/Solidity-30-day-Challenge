// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract A {
    string internal x;

    function setA() external {
        x = "Blockchain";
    }
}

contract B {
    uint256 internal power;

    function setB() external {
        uint256 a = 2;
        uint256 b = 20;
        power = a**b;
    }
}

contract C is A, B {
    function getStr() external view returns (string memory) {
        return x;
    }

    function getPower() external view returns (uint256) {
        return power;
    }
}

contract call {
    C contractC = new C();

    constructor() {
        contractC.setA();
        contractC.setB();
    }

    function Inheritance() public view returns (string memory, uint256) {
        return (contractC.getStr(), contractC.getPower());
    }
}
