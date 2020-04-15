//
//  Queue.swift
//  DaAl
//
//  Created by Duy Tran on 4/15/20.
//

import Foundation

struct Queue<T> {
    
    private(set) var list: [T]
    
    init(list: [T]) {
        self.list = list
    }
    
    func peek() -> T? {
        list.first
    }
    
    mutating func enqueue(_ value: T) {
        list.append(value)
    }
    
    @discardableResult
    mutating func dequeue() -> T? { 
        list.removeFirst()
    }
}
