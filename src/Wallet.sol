// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Wallet{

    mapping (address=>uint) public addressesBalance;
    address owner;

    modifier onlyOwner(){
        require(msg.sender == owner, "This can only be done by the owner of the Smart Contract");
        _;
    }

    constructor(){

        owner = msg.sender;
    }

    function deposit() public payable{

        addressesBalance[msg.sender] = msg.value;

    }

 

}