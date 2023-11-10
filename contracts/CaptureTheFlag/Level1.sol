// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

/////////////////// ☆☆ extropyio ☆☆ /////////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////

/* INSTRUCTIONS: Level 1 - Matrix Addition
Write a function that adds two matrices returns the result. 
To keep things simple the array sizes will be fixed sizes of 2x3 (uint256[2][3])
*/

/*
  interface Isolution {
    function solution(uint256[2][3] calldata firstArray, uint256[2][3] calldata secondArray) external pure returns (uint256[2][3] memory finalArray);
  }
*/

contract Level1Template {
    function solution(
        uint256[2][3] calldata x,
        uint256[2][3] calldata y
    ) external pure returns (uint256[2][3] memory finalArray) {
        // TODO: Implement your solution here

        finalArray[0][0] = x[0][0] + y[0][0];
        finalArray[1][0] = x[1][0] + y[1][0];
        finalArray[2][0] = x[2][0] + y[2][0];
        finalArray[0][1] = x[0][1] + y[0][1];
        finalArray[1][1] = x[1][1] + y[1][1];
        finalArray[2][1] = x[1][1] + y[2][1];

        return finalArray;
    }
}
