// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

/////////////////// ☆☆ extropyio ☆☆ /////////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////

/* INSTRUCTIONS: Level 3 - abi.encodePacked
Using the Isolution4 interface write a function that unpacks our data that was packed using 
abi.encodePacked(a, b, c). Where a is type uint16, b is type bool and c is type bytes6.
*/

/*
interface Isolution3 {
    function solution(bytes memory packed) external returns (uint16 a, bool b, bytes6 c);
}
*/

contract Level3Template {
    function solution(
        bytes memory packed
    ) external pure returns (uint16 a, bool b, bytes6 c) {
        // TODO: Write your solution here
    }
}
