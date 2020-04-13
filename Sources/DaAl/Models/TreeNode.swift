//
//  TreeNode.swift
//  
//
//  Created by Duy Trần on 4/13/20.
//

import Foundation

class TreeNode<T> {
    
    let value: T
    let left: TreeNode<T>?
    let right: TreeNode<T>?
    
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
