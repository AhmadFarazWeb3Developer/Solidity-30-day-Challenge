// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

// Note: Deploy contract A first
contract A {
    // NOTE: storage layout must be the same as contract A
    uint256 public x;

    function setX(uint256 _x) external payable {
        x = _x;
    }
}

contract B {
    uint256 public x;

    function setX(address _A, uint256 val) external {
        // A's storage is set, B is not modified.
        (bool success, ) = _A.delegatecall(
            abi.encodeWithSignature("setX(uint256)", val)
        );
        require(success);
    }
}
