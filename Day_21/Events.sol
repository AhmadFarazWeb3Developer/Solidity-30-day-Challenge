//SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

contract Events {
    event Details(string name, uint256 code, string country);

    function setDetails(
        string memory _name,
        uint256 _code,
        string memory _country
    ) public {
        emit Details(_name, _code, _country);
    }

    event payment(address _address, uint256 amount, uint256 code);

    function trasaction(
        address _address,
        uint256 amount,
        uint256 _code
    ) public {
        emit payment(_address, amount, _code);
    }
}
