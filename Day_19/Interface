// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

interface notImplemented {
    function Name(string memory str) external pure returns (string memory);

    function IDNo(uint256 id) external pure returns (uint256);

    function Country(string memory country)
        external
        pure
        returns (string memory);
}

contract Implemented is notImplemented {
    function Name(string memory _str) external pure returns (string memory) {
        return _str;
    }

    function IDNo(uint256 _id) external pure override returns (uint256) {
        return _id;
    }

    function Country(string memory _country)
        external
        pure
        returns (string memory)
    {
        return _country;
    }

    mapping(uint256 => string) private idToName;
    mapping(uint256 => string) private idToCountry;

    function setName(uint256 id, string memory name) external {
        idToName[id] = name;
    }

    function setCountry(uint256 id, string memory country) external {
        idToCountry[id] = country;
    }

    function getNameById(uint256 id) external view returns (string memory) {
        return idToName[id];
    }

    function getCountryById(uint256 id) external view returns (string memory) {
        return idToCountry[id];
    }
}
