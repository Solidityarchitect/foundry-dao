//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private s_number;

    event NumberChanged(uint256 indexed number);

    function store(uint256 number) public onlyOwner {
        s_number = number;
        emit NumberChanged(s_number);
    }

    function getNumber() external view returns (uint256) {
        return s_number;
    }
}
