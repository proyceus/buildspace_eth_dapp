// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    mapping(address => uint256) public specificWaves;

    function wave() public {
        totalWaves += 1;
        specificWaves[msg.sender] = specificWaves[msg.sender] += 1;
        console.log("%s has waved!", msg.sender);
    }
    
    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}