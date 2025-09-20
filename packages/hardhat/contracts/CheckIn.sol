//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

interface IBatchRegistry {
    function checkIn() external;
}

contract CheckIn {
    IBatchRegistry public batchRegistry;

    constructor(address batchRegistryAddress) {
        batchRegistry = IBatchRegistry(batchRegistryAddress);
    }

    function checkIn() public {
        batchRegistry.checkIn();
    }
}
