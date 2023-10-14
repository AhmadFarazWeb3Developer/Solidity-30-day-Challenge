// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract transferEthers {
    // The address to which ethers will be transferred
    address payable user = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);

    // Function to receive ethers from this current contract
    function payEther() public payable {}

    // Function to show the balance of this contract
    function ShowEthers() public view returns (uint256) {
        return address(this).balance;
    }

    // Function to send 1 ether to the specified user
    function SendEthers() public {
        user.transfer(1 ether);
    }

    // Function to show the balance of the specified user
    function showUserEthers() public view returns (uint256) {
        return user.balance;
    }
    /* Note :  the "payable" keyword is used to indicate that an address can receive Ether.
  It's typically used when we want a function or variable to be capable of receiving Ether.
*/
}
