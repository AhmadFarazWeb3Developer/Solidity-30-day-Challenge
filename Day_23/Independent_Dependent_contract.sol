
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract IndependentContract {
    mapping(string => uint256) balances;
    mapping(uint256 => string) owner;

    function setDetails(
        uint256 amount,
        string memory name,
        uint256 key
    ) external {
        owner[key] = name;
        balances[name] = amount;
    }

    function getPayment(uint256 key, string memory name)
        external
        view
        returns (string memory, uint256)
    {
        return (owner[key], balances[name]);
    }
}

contract DependentSmartContract {
    IndependentContract indeContract;

    constructor() {
        indeContract = new IndependentContract();
    }

    function setRights(
        uint256 amount,
        string memory name,
        uint256 key
    ) internal {
        indeContract.setDetails(amount, name, key);
    }

    function getRights(uint256 key, string memory name) internal view {
        indeContract.getPayment(key, name);
    }
}
