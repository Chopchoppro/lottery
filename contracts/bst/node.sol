// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.15;
 
  struct Node {
    uint256 value;
    bytes25 userId;
    Node left;
    Node right;
 }
