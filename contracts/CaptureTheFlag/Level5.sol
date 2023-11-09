// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/////////////////// ☆☆ extropyio ☆☆ /////////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////

/* INSTRUCTIONS: Level 5 - Overflow-free Average, Rounded up
Using the Isolution5 interface calculate the average of two values int256 a and int256 b.

You will need to write an overflow-free method that will round up the average of (a + b) / 2. 
Keep in mind that we are rounding up (ceil) and NOT rounding down (floor). 
Floor = rounding towards zero while Ceil = rounding away from zero see examples on wikipedia
*/

/*
interface Isolution5 {
    function solution(int256 a, int256 b) external pure returns (int256);
}
*/

contract Level5Template {
    // Give an overflow-free method for computing the average, rounding up, of 2 signed integers, (a + b) / 2
    // Your function will take 2 values (a,b) and return the average of these values
    // Keep in mind that you will be rounding the average up (ceil) NOT rounding down (floor)
    // Floor -> rounding towards zero
    // Ceil -> rounding away from zero
    function solution(int256 a, int256 b) external pure returns (int256) {
        // TODO: Write your solution here
    }
}
