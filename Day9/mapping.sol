// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract Mapping {
    // Mapping with integer key to string value
    mapping(uint256 => string) public getDetails;

    function setDetails(uint256 _key, string memory _name) public {
        getDetails[_key] = _name;
    }

    // Mapping with string key to uint256 value
    mapping(string => uint256) public getCash;

    // Function to set cash amount for a given name
    function setCash(string memory _name, uint256 _amount) public {
        getCash[_name] = _amount;
    }

    // Mapping with integer key to struct value
    struct Student {
        string name;
        uint256 class;
    }
    mapping(uint256 => Student) public getStudentDTL;

    // Function to set student details for a given roll number
    function setStudentDTL(
        uint256 _rollNo,
        string memory _name,
        uint256 _class
    ) public {
        getStudentDTL[_rollNo] = Student(_name, _class);
    }
}
