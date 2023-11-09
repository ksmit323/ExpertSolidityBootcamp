// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

/////////////////// ☆☆ extropyio ☆☆ /////////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////

/* INSTRUCTIONS: Level 0 - Tutorial
This level is really simple. Use the interface below to write a smart contract. 
Your contract should contain a function called solution that returns a uint8. 
In this case the function body logic is very simply as the answer is always 255.
*/

/*
    interface Isolution {
        function solution() external pure returns (uint8);
    }
*/

contract Level0Template {
    function solution() external pure returns (uint8) {
        // TODO: Implement your solution here

        assembly {
            mstore(0, 255)
            return(0, 0)
        }
    }
}
