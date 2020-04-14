//
//  TreeNode.swift
//  DaAl
//
//  Created by Duy Trần on 4/13/20.
//

import Foundation

final class TreeNode<T> {
    
    var value: T
    var left: TreeNode<T>?
    var right: TreeNode<T>?
    
    init(
        value: T,
        left: TreeNode<T>? = nil,
        right: TreeNode<T>? = nil
    ) {
        self.value = value
        self.left = left
        self.right = right
    }
}

extension TreeNode: Equatable where T: Equatable {
    
    static func == (lhs: TreeNode<T>, rhs: TreeNode<T>) -> Bool {
        lhs.value == rhs.value
            && lhs.left === rhs.left
            && lhs.right === rhs.right
    }
}
