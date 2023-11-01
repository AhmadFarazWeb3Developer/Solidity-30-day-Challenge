
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Ownable {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }
}

contract Stoppable is Ownable {
    bool public isStopped;
    
    constructor() {
        isStopped = false;
    }
    
    function stopTransaction() external onlyOwner {
        isStopped = false;
    }
    
    function startTransaction() external onlyOwner {
        isStopped = true;
    }
    
    function withdraw (uint256 amount) external view onlyOwner returns (uint256)
    {
        require(isStopped == true,"call startTansaction method before withdrawing amount");
        return amount;
    }
}
