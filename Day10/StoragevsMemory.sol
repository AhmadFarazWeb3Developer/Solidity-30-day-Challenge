// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract StoragevsMemory {
    // Array to store names
    string[] public Names = ["Ahmad Faraz", "Hammad Ali Khan", "Arsalan Aslam"];

    // Function to demonstrate storage in memory
    function storeAtMemory() public view {
        // 'name1' is making a copy of the 'Names' array,
        // which will not modify the actual array.
        string[] memory name1 = Names;
        name1[0] = "Saad Israr";
        name1[1] = "Ateeq Khan";
        name1[2] = "Ali Wazeer";
    }

    // Function to demonstrate storage in storage
    function storeAtStorage() public {
        // Here, 'name1' is pointing (meaning it stores the address)
        // to the 'Names' array and changes the name at index 0 permanently.
        string[] storage name1 = Names;
        name1[0] = "Waleed Khan";
        name1[1] = "Mansoor Khan";
        name1[2] = "Huzaifa Shahab";
    }

    // Function to add a new element to the 'Names' array
    function AddElement(string memory name) public {
        Names.push(name);
    }
}
