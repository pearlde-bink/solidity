// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;

contract HotelRoom{
    enum Statuses { Vacant, Occupied } //status of room
    Statuses public currentStatus;

    event Occupy(address _occupant, uint _value); //to log the occupant details when the room is booked

    //owner of the contract who will receive the payment
    address payable public owner; //payable lets user actually receive ethereum 
    
    constructor() {
        owner = payable(msg.sender); //set owner to the address that deploys contract
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant{
        //check status
        require(currentStatus == Statuses.Vacant, "Currently occupied."); //function to check if true or false
        _;
    }

    modifier cost(uint _amount){
        //check price
        require(msg.value >= _amount, "Not enough ether provided.");
        _;
    }

    function book() payable onlyWhileVacant cost(2 ether) public {
        currentStatus = Statuses.Occupied;
        (bool sent, bytes memory data) = owner.call{value: msg.value}("");//call function is used anytime we want to interact with another contract from our own contract
        require(true);
        emit Occupy(msg.sender, msg.value); //emit the Occupy to log the booking
    }
    
}
