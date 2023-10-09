// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// storage arrays of two types fixed and dynamic size
// these are stoed on blockchain
contract Storage_Arrays {
    // fixed size array decleration

    uint256[4] fixedArray = [10, 20, 30, 40];

    function getElement(uint256 index) public view returns (uint256) {
        return fixedArray[index];
    }
    // declearing dynamic size array
    uint256[] dynamicArray;

    // pushing element to dynamic size array
    function pushdynamicElement(uint256 element) public {
        dynamicArray.push(element);
    }

    // poping element for dynamic size array
    function popdynamicElement() public {
        dynamicArray.pop();
    }

    function getdynamicElement(uint256 index) public view returns (uint256) {
        return dynamicArray[index];
    }
}
