//SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

contract Division {
    function Divide2Nums(uint256 numOne, uint256 numTwo)
        external
        pure
        returns (uint256)
    {
        require(numTwo > 0, "Second number should'nt be zero");
        return numOne / numTwo;
    }
}

contract TryCatchTest {
    Division div;

    constructor() {
        div = new Division();
    }

    event Log1(string);
    event Log2(bytes lowLevelError);

    function getDivision(uint256 x, uint256 y) public {
        try div.Divide2Nums(x, y) returns (uint256) {
            emit Log1("pure Success");
        } catch Error(string memory reason) {
            emit Log1(reason);
        } catch Panic(
            uint256 panicCode // Panic catch requires the parameter
        ) {
            emit Log1("Pure Failure");
        } catch (
            bytes memory lowLevelError // This catch block will handle errors of any type that return low-level data (in bytes)
        ) {
            emit Log2(lowLevelError);
        }
    }
}
