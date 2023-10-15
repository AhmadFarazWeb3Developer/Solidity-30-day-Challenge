// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract A {
    // Can be accessed outside the current contract (A) and inside it.
    function Fun_1() public pure returns (string memory) {
        return "Public Function";
    }

    // Can be accessed only inside the current contract (A).
    function Fun_2() private pure returns (string memory) {
        return "Private Function";
    }

    // Can only be accessed inside the current contract and derived contracts from A.
    function Fun_3() internal pure returns (string memory) {
        return "Internal Function";
    }

    // Can only be accessed in derived contracts and outside the contract.
    function Fun_4() external pure returns (string memory) {
        return "External Function";
    }
}

// Inherit B from A
contract B is A {
    string public Fun3 = Fun_3();
}

contract C {
    A a = new A();
    // Fun_4() is called with an object of A.
    string public Fun4 = a.Fun_4();
}
