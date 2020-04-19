//
//  BinaryTreeNode.swift
//  DaAl
//
//  Created by Duy Trần on 4/13/20.
//

import Foundation

final class BinaryTreeNode<T> {
    
    var value: T
    var left: BinaryTreeNode<T>?
    var right: BinaryTreeNode<T>?
    
    init(
        value: T,
        left: BinaryTreeNode<T>? = nil,
        right: BinaryTreeNode<T>? = nil
    ) {
        self.value = value
        self.left = left
        self.right = right
    }
}

extension BinaryTreeNode: Equatable where T: Equatable {
    
    static func == (lhs: BinaryTreeNode<T>, rhs: BinaryTreeNode<T>) -> Bool {
        lhs.value == rhs.value
            && lhs.left === rhs.left
            && lhs.right === rhs.right
    }
}
