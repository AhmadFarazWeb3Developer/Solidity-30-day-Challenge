//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract BYTE_ARRAYS {
    // 1 byte = 8 bits
    // 1 hexadecimal digit = 4 bits
    // 1 byte = 2 hexadecimal numbers

    // Fixed-size bytes array  decleartion with different sizes.
    bytes1 public a1;
    bytes2 public a2;
    bytes3 public a3;
    // initialization of arrays
    function setBytes() public {
        a1 = "a";
        a2 = "ab";
        a3 = "abc";
    }

    // Dynamic-size bytes array.
    bytes public b1 = "abc";

    // Pushing element to dynamic-size bytes array.
    function pushElement() public {
        b1.push("d");
    }

    // Popping element from dynamic-size bytes array.
    function popElement() public {
        b1.pop();
    }

    // Getting value at specific index in dynamic-size bytes array.
    function getIndex(uint256 index) public view returns (bytes1) {
        return b1[index];
    }

    // Getting length of dynamic-size bytes array.
    function getLength() public view returns (uint256) {
        return b1.length;
    }
}
