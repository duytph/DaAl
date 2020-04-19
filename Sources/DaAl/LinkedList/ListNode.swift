//
//  ListNode.swift
//  DaAl
//
//  Created by Duy Trần on 4/13/20.
//

import Foundation

final class ListNode<T> {
    
    var value: T
    var next: ListNode<T>?
    
    init(
        value: T,
        next: ListNode<T>? = nil
    ) {
        self.value = value
        self.next = next
    }
}

extension ListNode: Equatable where T: Equatable {
    
    static func == (lhs: ListNode<T>, rhs: ListNode<T>) -> Bool {
        lhs.value == rhs.value && lhs.next === rhs.next
    }
}
