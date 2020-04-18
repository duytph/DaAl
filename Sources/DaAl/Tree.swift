//
//  Tree.swift
//  DaAl
//
//  Created by Duy Tran on 4/16/20.
//

import Foundation

class Tree<T> {
    
    private(set) var root: TreeNode<T>?
    
    init(root: TreeNode<T>?) {
        self.root = root
    }
    
    // MARK: - Inorder Depth First Traversal
    
    func inorderDepthFirstTraversal() -> String {
        guard let root = root else { return "" }
        
        var result = ""
        inorderDepthFirstTraversal(
            of: root,
            to: &result
        )
        
        return "[\(result)]"
    }
    
    private func inorderDepthFirstTraversal(
           of node: TreeNode<T>,
           to result: inout String
       ) {
           if let left = node.left {
               inorderDepthFirstTraversal(
                   of : left,
                   to: &result
               )
           }
           
           result += result.isEmpty ? "\(node.value)" : ", \(node.value)"
           
           if let right = node.right {
               inorderDepthFirstTraversal(
                   of : right,
                   to: &result
               )
           }
       }
    
    // MARK: - Preorder Depth First Traversal
    
    func preorderDepthFirstTraversal() -> String {
        guard let root = root else { return "" }
        
        var result = ""
        preorderDepthFirstTraversal(
            of: root,
            to: &result
        )
        
        return "[\(result)]"
    }
    
    private func preorderDepthFirstTraversal(
        of node: TreeNode<T>,
        to result: inout String
    ) {
        result += result.isEmpty ? "\(node.value)" : ", \(node.value)"
        
        if let left = node.left {
            preorderDepthFirstTraversal(
                of : left,
                to: &result
            )
        }
        
        if let right = node.right {
            preorderDepthFirstTraversal(
                of : right,
                to: &result
            )
        }
    }
    
    // MARK: - Postorder Depth First Traversal
    
    func postorderDepthFirstTraversal() -> String {
        guard let root = root else { return "" }
        
        var result = ""
        postorderDepthFirstTraversal(
            of: root,
            to: &result
        )
        
        return "[\(result)]"
    }
    
    private func postorderDepthFirstTraversal(
        of node: TreeNode<T>,
        to result: inout String
    ) {
        if let left = node.left {
            postorderDepthFirstTraversal(
                of : left,
                to: &result
            )
        }
        
        if let right = node.right {
            postorderDepthFirstTraversal(
                of : right,
                to: &result
            )
        }
        
        result += result.isEmpty ? "\(node.value)" : ", \(node.value)"
    }
}

// MARK: - CustomStringConvertible

extension Tree: CustomStringConvertible {
    
    var description: String {
        inorderDepthFirstTraversal()
    }
}
