// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BitwiseDecomposer {
    function decomposeUint8(uint8 num) public pure returns (uint8[] memory) {
        uint8 count = 0;
        uint8 temp = num;

        // 1️⃣ Compter la longueur utile du tableau
        while (temp > 0) {
            count++;
            temp >>= 1; // Décale à droite pour compter les bits
        }

        // 2️⃣ Créer le tableau dynamique
        uint8[] memory result = new uint8[](count);
        uint8 index = 0;

        // 3️⃣ Remplir le tableau avec les puissances de 2 et les 0 nécessaires
        for (uint8 i = 0; i < count; i++) {
            result[index++] = (num & (1 << i)) != 0 ? uint8(1 << i) : 0;
        }

        return result;
    }
}


