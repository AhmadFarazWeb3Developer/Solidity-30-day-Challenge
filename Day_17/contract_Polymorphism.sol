//SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

// Contract polymorphism, achieved through function overriding
contract Coin {
    function founder() public pure virtual returns (string memory) {
        return ("Every Coin exists founders");
    }
}

contract Bitcoin is Coin {
    function founder() public pure override returns (string memory) {
        return ("Satoshi Nakamoto is the founder of Bitcoin");
    }
}

contract Ethereum is Coin {
    function founder() public pure override returns (string memory) {
        return ("Vitalik Buterin is the founder of Ethereum");
    }
}

contract Main {
    Coin coin = new Coin();

    string public getCoin = coin.founder();

    Coin coin1 = new Bitcoin();
    string public getCoin1 = coin1.founder();

    Coin coin2 = new Ethereum();
    string public getCoin2 = coin2.founder();
}
