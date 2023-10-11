
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract AuthorDetails {
    // Define a struct named Author
    struct Author {
        string Name;
        string book;
        string qualification;
    }
    Author author; // Declare a variable of type Author
    // Constructor function to initialize author details
    function authorDetails() public {
        author = Author(
            "Robert Green",
            "48 Laws of Power",
            "PHD in Philosophy"
        );
    }
    // Function to get the author's name
    function getName() public view returns (string memory) {
        return author.Name;
    }
    // Function to get the author's book
    function getBook() public view returns (string memory) {
        return author.book;
    }
    // Function to get the author's qualification
    function getQualification() public view returns (string memory) {
        return author.qualification;
    }
}
