// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract DressSizeDetails {
    // Declaration of enum
    enum DressSize {
        SMALL,
        MEDIUM,
        LARGE
    }

    DressSize choice; // Variable to store chosen dress size
    DressSize constant defaultSize = DressSize.MEDIUM; // Default dress size is MEDIUM

    // Function to set the dress size to LARGE
    function setLarge() public {
        choice = DressSize.LARGE;
    }

    // Function to get the chosen dress size
    function getChoice() public view returns (DressSize) {
        return choice;
    }

    // Function to get the default dress size as a uint
    function getDefaultSize() public pure returns (uint256) {
        return uint256(defaultSize);
    }
}
