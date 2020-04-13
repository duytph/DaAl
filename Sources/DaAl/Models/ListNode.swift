//
//  ListNode.swift
//  Daal
//
//  Created by Duy Trần on 4/13/20.
//

import Foundation

class ListNode<T> {
    
    let value: T
    let next: ListNode<T>?
    
    init(
        value: T,
        next: ListNode<T>? = nil
    ) {
        self.value = value
        self.next = next
    }
}
