// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;

contract MyContract{
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book{
        string title;
        string author;
    }

    constructor() {
        names[1] = "Bink";
        names[2] = "Bing";
        names[3] = "Booth";
    }

    function addBook(uint _id, string memory _title, string memory _author) public{
        books[_id] = Book(_title, _author);
    }

    function addMyBook(uint _id, string memory _title, string memory _author) public{
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}
