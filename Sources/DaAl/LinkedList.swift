//
//  LinkedList.swift
//  DaAl
//
//  Created by Duy Trần on 4/13/20.
//

import Foundation

class LinkedList<T> {
    
    var root: ListNode<T>?
    
    init(root: ListNode<T>?) {
        self.root = root
    }
}

extension LinkedList: CustomStringConvertible {
    
    var description: String {
        guard let root = self.root else { return "[]" }
        
        var result = "\(root.value)"
        var currentNode = root.next
        
        while let node = currentNode {
            result += ", \(node.value)"
            currentNode = currentNode?.next
        }
        
        return "[" + result + "]"
    }
}
