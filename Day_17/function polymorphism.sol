//SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

// Function polymorphism , achieved through function overloading
contract Polymorphism {
    function addValues(uint256 val1, uint256 val2)
        public
        pure
        returns (uint256)
    {
        return (val1 + val2);
    }

    function addValues(
        uint256 val1,
        uint256 val2,
        uint256 val3
    ) public pure returns (uint256) {
        return (val1 + val2 + val3);
    }

    function multipyValues(uint256 val1, uint256 val2)
        public
        pure
        returns (uint256)
    {
        return (val1 * val2);
    }

    function multipyValues(
        uint256 val1,
        uint256 val2,
        uint256 val3
    ) public pure returns (uint256) {
        return (val1 * val2 * val3);
    }
}
