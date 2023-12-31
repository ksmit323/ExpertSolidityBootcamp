// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/////////////////// ☆☆ extropyio ☆☆ /////////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////

/* INSTRUCTIONS: Level 6 - Verifying Signatures
For this level we signed some messages off chain using the following front end code:
const ethers = require('ethers');

let messageHash = ethers.utils.id("bidPrice(0.420)");
let messageHashBytes = ethers.utils.arrayify(messageHash);
let flatSig = await wallet.signMessage(messageHashBytes); // Sign the binary data
let sig = ethers.utils.splitSignature(flatSig);  // sig.v sig.r sig.s etc

Using the Isolution6 interface write a function that will take the messageHash (plus params) and return the signer of the message.
*/

/*
interface Isolution6 {
    function solution(address owner, bytes32 messageHash, uint8 v, bytes32 r, bytes32 s) external pure returns (bool isSignedByOwner);
}
*/

contract Level6Template {
    function solution(
        address owner,
        bytes32 messageHash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external pure returns (bool isSignedByOwner) {
        // TODO: Write your solution here

        // Recover the signer's address from the provided signature
        address signer = ecrecover(messageHash, v, r, s);

        // Check if the recovered signer matches the expected owner
        isSignedByOwner = (signer == owner);

        return isSignedByOwner;
    }
}
