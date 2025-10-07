//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import {IGraduateNFTMetadata} from "./BatchGraduationNFT.sol";

contract Metadata is IGraduateNFTMetadata {
    // Your name that will appear on the NFT
    string private name = "Vk1033"; // Replace with your actual name

    // RGB color values for your NFT background (0-255 each)
    uint8 private red = 76; // Example: Purple-ish color
    uint8 private green = 29;
    uint8 private blue = 149;

    function getName() external view returns (string memory) {
        return name;
    }

    function getColor() external view returns (uint8, uint8, uint8) {
        return (red, green, blue);
    }
}
