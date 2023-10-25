// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;
contract Parent {
    uint256 public Var = 30; // Public state variable of type uint256 with an initial value of 30
    uint256 internal internal_Var; // Internal state variable of type uint256

    // Function to calculate the square of a value and assign it to internal_Var
    function sqrt(uint256 value) external returns (uint256) {
        internal_Var = value**2;
        return internal_Var;
    }
}

contract child is Parent {
    // Function to increment the value of internal_Var by 20 and return the updated value
    function incrementVar() public returns (uint256) {
        internal_Var = internal_Var + 20;
        return internal_Var;
    }
    // Function to add two values and return the sum
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 sum = a + b;
        return sum;
    }
}

contract Caller {
    child c = new child(); // Create an instance of the child contract
    // Function to call the sqrt function of the child contract with an input value of 0 and return the result
    function f1() public returns (uint256) {
        return c.sqrt(0);
    }
    // Function to call both the incrementVar and add functions of the child contract and return the results
    function f2() public returns (uint256, uint256) {
        return (c.incrementVar(), c.add(4, 5));
    }
}
