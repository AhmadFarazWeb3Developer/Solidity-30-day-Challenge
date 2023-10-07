// SPDX-License-Identifier:MIT
pragma solidity 0.8.18;
contract Functions {

    function MultiplyTwoArgs(uint256 a, uint256 b) public pure returns (uint256) {
        return (a * b);
    }
    function MultiplyThreeArgs(uint256 a,uint256 b, uint256 c
    ) public pure returns (uint256) {
        return (a * b * c);
    }

    // Mathematical Function : (these are built-in function for direct math calculations)
    function callAddMod() public pure returns (uint256) {
        return addmod(4, 5, 3); // (a+b)%k
    }
    function callMulMod() public pure returns (uint256) {
        return mulmod(4, 5, 3); // (a*b)%k
    }

    // cryptographic functions:
    // 1. compute the Keccak-256 hash of the input
    function Call_keccak256() public pure returns (bytes32) {
        return keccak256("ABC");
    }
    // 2. compute the SHA-256 hash of the input
    function Call_sha256() public pure returns (bytes32) {
        return sha256("ABC");
    }
    // 3. compute the RIPEMD-160 hash of the input
    function Call_ripemd160() public pure returns (bytes20) {
        return ripemd160("ABC");
    }
    // 4. recover address associated with the public key from elliptic curve signature, return zero on error
    function Call_ecrecover() public pure returns (address) {
        return
            ecrecover(0x1234567890123456789012345678901234567890123456789012345678901234,27,
                0x1234567890123456789012345678901234567890123456789012345678901234,
                0x5678901234567890123456789012345678901234567890123456789012345678 );
                 }
             }
