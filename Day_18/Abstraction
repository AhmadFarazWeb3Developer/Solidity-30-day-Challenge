// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

abstract contract Phone {

    function display() external pure virtual returns (string memory);

    function battery() external pure virtual returns (string memory);

    function processor() external pure virtual returns (string memory);

    function Camera() external pure virtual returns (string memory);

    function keyPad() internal pure returns (string memory) {
        return "Classical phones have a keypad.";
    }
}

contract Iphone15ProMax is Phone {
    
    function display() public pure override returns (string memory) {
        return "6.69 inches diagonally.";
    }
    function battery() public pure override returns (string memory) {
        return "4,441mAh battery capacity.";
    }
    function processor() public pure override returns (string memory) {
        return "Hexa-core Apple A17 Pro processor.";
    }
    function Camera() public pure override returns (string memory) {
        return "48 Megapixels camera.";
    }
    function ROM() public pure returns (string memory) {
        return "Storage options: 128GB to 1TB.";
    }
    function APPstore() public pure returns (string memory) {
        return "All iPhones have an app store.";
    }
    function multipleWindows() public pure returns (string memory) {
        return "All iPhones support swapping among multiple windows.";
    }
}
