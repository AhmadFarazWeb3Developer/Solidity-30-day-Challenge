//SPDX-License-Identifier:  MTI
pragma solidity 0.8.21;
contract A {
    string internal x;
    function setX() public {
        x = "A is a Parent Class ";
    }
    uint256 internal sum;
    function setSum() public {
        uint256 a = 10;
        uint256 b = 20;
        sum = a + b;
    }
}
contract B is A {
    function getA_str() external view returns (string memory) {
        return x;
    }
}
contract C is A {
    function getA_Sum() external view returns (uint256) {
        return sum;
    }
}
contract call {
    B contractB = new B();
    C contractC = new C();
    constructor() {
        contractB.setX();
        contractC.setSum();
    }
    function Inheritance() public view returns (string memory, uint256) {
        return (contractB.getA_str(), contractC.getA_Sum());
    }
}
