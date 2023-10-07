// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;

// Free Function
function Calculate(uint256 a, uint256 b) pure returns (uint256) {
    if (a > b) { return (a - b); } 
    else if (a < b) { return (a + b); } 
    else { return (a * b); }
}

contract Example {
    uint256 Result;
    constructor() {
        Result = 0;
    }
    function setValues(uint256 a, uint256 b) public {
        Result = Calculate(a, b); // function call
    }
    // get result
    function getResult() public view returns (uint256) {
        return Result;
    }
    //--------------------------------------------------------------
    // special functions
    event log(string _fun, address _sender, uint256 _val, bytes _data);
    // 1.   fall back (used for receving ethers and bytes data)
    fallback() external payable {
        emit log("fallback", msg.sender, msg.value, msg.data);
    }
    // 2. receive (used for receving only ethers)
    receive() external payable {
        emit log("receive", msg.sender, msg.value, " ");
    }
    // checking the balance transfered
    function checkBal() public view returns (uint256) {
        return address(this).balance;
    }
}
