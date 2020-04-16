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
    
    func inorderTraversal() -> String {
        guard let root = root else { return "" }
        
        var result = ""
        inorderTraversal(
            of: root,
            to: &result
        )
        
        return "[\(result)]"
    }
    
    func preorderTraversal() -> String {
        guard let root = root else { return "" }
        
        var result = ""
        preorderTraversal(
            of: root,
            to: &result
        )
        
        return "[\(result)]"
    }
    
    func postorderTraversal() -> String {
        guard let root = root else { return "" }
        
        var result = ""
        postorderTraversal(
            of: root,
            to: &result
        )
        
        return "[\(result)]"
    }
}

extension Tree {
    
    private func inorderTraversal(
        of node: TreeNode<T>,
        to result: inout String
    ) {
        if let left = node.left {
            inorderTraversal(
                of : left,
                to: &result
            )
        }
        
        result += result.isEmpty ? "\(node.value)" : ", \(node.value)"
        
        if let right = node.right {
            inorderTraversal(
                of : right,
                to: &result
            )
        }
    }
    
    private func preorderTraversal(
        of node: TreeNode<T>,
        to result: inout String
    ) {
        result += result.isEmpty ? "\(node.value)" : ", \(node.value)"
        
        if let left = node.left {
            preorderTraversal(
                of : left,
                to: &result
            )
        }
        
        if let right = node.right {
            preorderTraversal(
                of : right,
                to: &result
            )
        }
    }
    
    private func postorderTraversal(
        of node: TreeNode<T>,
        to result: inout String
    ) {
        if let left = node.left {
            postorderTraversal(
                of : left,
                to: &result
            )
        }
        
        if let right = node.right {
            postorderTraversal(
                of : right,
                to: &result
            )
        }
        
        result += result.isEmpty ? "\(node.value)" : ", \(node.value)"
    }
}

extension Tree: CustomStringConvertible {
    
    var description: String {
        inorderTraversal()
    }
}
