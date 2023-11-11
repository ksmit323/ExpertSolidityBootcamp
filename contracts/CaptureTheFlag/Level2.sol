// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

/////////////////// ☆☆ extropyio ☆☆ /////////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////

/* INSTRUCTIONS: Level 2 - Sorting an Array
Write a function that sorts an array in ascending order and returns the result. 
The array will be a fixed of 10 but the contents random. 
*/

/* 
  interface Isolution2 {
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
  }
*/

contract Level2Template {
    function solution(
        uint256[10] calldata arr
    ) external returns (uint256[10] memory sortedArray) {
        // TODO: Implement your solution here.

        uint256 n = arr.length;

        for (uint256 i = 0; i < n - 1; i++) {
            uint256 minIndex = i;

            for (uint256 j = i + 1; j < n; j++) {
                if (arr[j] < arr[minIndex]) {
                    minIndex = j;
                }
            }

            // Swap the found minimum element with the first element
            (sortedArray[minIndex], sortedArray[i]) = (arr[i], arr[minIndex]);
        }

        return arr;
    }
}
