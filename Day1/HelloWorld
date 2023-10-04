// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract HelloWorld {
    // 1. First way to print "Hello World" using the default public function with state variable helloWorld_1.
    string public helloWorld_1 = "Hello World 1";

    // 2. Second way, using a constructor and a user-defined function with a visibility of view.
    string data; // state variable 
    constructor() {
        data = "Hello World 2";
    }
    function helloWorld_2() public view returns (string memory) {
        return data;
    }

    // 3. Third way, using a user-defined function with a visibility of pure.
    function helloWorld_3() public pure returns (string memory) {
        return "Hello World 3";
    }

    // 4. Fourth way, taking a string parameter and storing it in a storage variable.
        string Data ;  // state variable 
    function helloWorld_4(string memory _data) public {
        Data = _data; // assigns '_data' to 'data'
    }

    // Getting fourth hello World . 
    function get_4th_HelloWorld()public view returns (string memory)
    {
        return Data;
    }
}
