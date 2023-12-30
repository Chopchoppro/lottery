
// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.15;


import "./node";
import "@chainlink/contracts/src/v0.6/vendor/SafeMathChainlink.sol";

contract SortedBinaryTree {
    Node root;
    
    function insert(uint256 value) public {
        // code for inserting a new node into the binary tree
        if (value == node.value) {
        return; // already exists, no need to insert again
    }
    if (value < node.value) {
        if (node.left == null) {
            node.left = Node(value, null, null);
        } else {
            _insert(node.left, value);
        }
    } else {
        if (node.right == null) {
            node.right = Node(value, null, null);
        } else {
            _insert(node.right, value);
        }
    }
    }
    
    function search(uint256 value) public returns (bool) {
        // code for searching for a value in the binary tree
        if (node == null) {
            return false;
        }
    
        if (node.value == value) {
            return true;
        } else if (value <= node.value) {
            return _search(node.left, value);
        } else {
            return _search(node.right, value);
        }
    }
    
    function delete(uint256 value) public {
    root = _delete(root, value);
}

function _delete(Node node, uint256 value) private returns (Node) {
    if (node == null) {
        return null;
    }
    
    if (value < node.value) {
        node.left = _delete(node.left, value);
    } else if (value > node.value) {
        node.right = _delete(node.right, value);
    } else {
        if (node.left == null) {
            return node.right;
        } else if (node.right == null) {
            return node.left;
        } else {
            Node temp = _getMin(node.right);
            node.value = temp.value;
            node.right = _delete(node.right, temp.value);
        }
    }
    
    return node;
}

function _getMin(Node node) private returns (Node) {
    while (node.left != null) {
        node = node.left;
    }
    
    return node;
}
}