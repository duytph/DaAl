//
//  BinaryTree.swift
//  DaAl
//
//  Created by Duy Tran on 4/16/20.
//

import Foundation

final class BinaryTree<T> {
    
    private(set) var root: BinaryTreeNode<T>?
    
    init(root: BinaryTreeNode<T>?) {
        self.root = root
    }
    
    // MARK: - Traversal
    
    func inorderDepthFirstTraversal(
        from node: BinaryTreeNode<T>?,
        to traversal: String = ""
    ) -> String {
        guard let node = node else { return traversal }
        
        var result = traversal
        
        if let left = node.left {
            result = inorderDepthFirstTraversal(
                from : left,
                to: result
            )
        }
        
        result += result.isEmpty
            ? "\(node.value)"
            : ", \(node.value)"
        
        if let right = node.right {
            result = inorderDepthFirstTraversal(
                from : right,
                to: result
            )
        }
        
        return result
    }
    
    func preorderDepthFirstTraversal(
        from node: BinaryTreeNode<T>?,
        to traversal: String = ""
    ) -> String {
        guard let node = node else { return traversal }
        
        var result = traversal
        
        result += result.isEmpty
            ? "\(node.value)"
            : ", \(node.value)"
        
        if let left = node.left {
            result = preorderDepthFirstTraversal(
                from : left,
                to: result
            )
        }
        
        if let right = node.right {
            result = preorderDepthFirstTraversal(
                from : right,
                to: result
            )
        }
        
        return result
    }
    
    func postorderDepthFirstTraversal(
        from node: BinaryTreeNode<T>?,
        to traversal: String = ""
    ) -> String {
        guard let node = node else { return traversal }
        
        var result = traversal
        
        if let left = node.left {
            result = postorderDepthFirstTraversal(
                from : left,
                to: result
            )
        }
        
        if let right = node.right {
            result = postorderDepthFirstTraversal(
                from : right,
                to: result
            )
        }
        
        result += result.isEmpty
            ? "\(node.value)"
            : ", \(node.value)"
        
        return result
    }
}

// MARK: - CustomStringConvertible

extension BinaryTree: CustomStringConvertible {
    
    var description: String {
        "[" + inorderDepthFirstTraversal(from: root) + "]"
    }
}
