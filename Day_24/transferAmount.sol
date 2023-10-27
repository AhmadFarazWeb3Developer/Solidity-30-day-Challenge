// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

contract Assetbank {
    struct assetHolder {
        bool hasAsset;
        uint256 assetValue;
    }
    mapping(address => assetHolder) balances;

    function setAssets(uint256 _assetValue) external payable {
        balances[msg.sender].assetValue = _assetValue;
        balances[msg.sender].hasAsset = true;
    }

    function transferAsset(address toAddress, uint256 amount) external payable {
        require(toAddress != address(0));
        require(amount > 0);
        require(balances[msg.sender].assetValue >= amount);
        require(balances[toAddress].assetValue + amount > amount);

        balances[msg.sender].assetValue -= amount;
        balances[toAddress].assetValue += amount;
    }

    function AssetValue() external view returns (uint256) {
        return balances[msg.sender].assetValue;
    }

    function getDetail(address toAddress) external view returns (uint256) {
        return balances[toAddress].assetValue;
    }
}
