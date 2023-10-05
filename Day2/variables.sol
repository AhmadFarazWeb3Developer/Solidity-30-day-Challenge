
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Basic {
    
    uint256 stateVar; //1. State variable;
    function setNums(uint256 a, uint256 b) public {
     // 2. Local varible
        uint256 Sum; 
        Sum = a + b;
        stateVar = Sum;
    }
    function getSum() public view returns (uint256) {
        return stateVar; // Returning state variable
    }

    // Returning the timestamp of the block
    function TimeStamp() public view returns (uint256) {
        return (block.timestamp);
    }
    // Returning the block number
    function blockNum() public view returns (uint256) {
        return (block.number);
    }
    // Returning the address of the sender
    function SenderAddress() public view returns (address) {
        return (msg.sender);
    }
    // returning sender of the transaction
    function transactionSender() public view returns (address) {
        return (tx.origin);
    }
    function gasPrice() public view returns (uint256) {
        return (tx.gasprice);
    }
}
