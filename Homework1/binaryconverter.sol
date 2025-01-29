// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BinaryConverter {
    
    function binaryToDecimal(string memory binaryString) public pure returns (uint) {
        uint decimal = 0;
        uint length = bytes(binaryString).length;
        
        for (uint i = 0; i < length; i++) {
            uint bit = uint8(bytes(binaryString)[i]) - 48; // Convertir '0' ou '1' en uint
            require(bit == 0 || bit == 1, "Invalid binary character");
            decimal = decimal * 2 + bit;
        }
        
        return decimal;
    }
}
