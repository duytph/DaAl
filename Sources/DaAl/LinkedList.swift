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
    
    func count() -> Int {
        var currentNode = root
        var count = 0
        while currentNode != nil {
            count += 1
            currentNode = currentNode?.next
        }
        
        return count
    }
}

extension LinkedList {
    
    subscript(index: Int) -> ListNode<T>? {
        guard index >= 0 else { return nil }
        
        var currentNode = root
        var currentIndex = 0
        
        while currentIndex < index {
            if let nextNode = currentNode?.next {
                currentNode = nextNode
                currentIndex += 1
            } else {
                return nil
            }
        }
        
        return currentNode
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
