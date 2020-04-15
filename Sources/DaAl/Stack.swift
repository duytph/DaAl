//
//  Stack.swift
//  DaAl
//
//  Created by Duy Tran on 4/15/20.
//

import Foundation

struct Stack<T> {
    
    private(set) var list: [T]
    
    init(list: [T]) {
        self.list = list
    }
    
    mutating func push(_ value: T) {
        list.append(value)
    }
    
    @discardableResult
    mutating func pop() -> T? {
        list.popLast()
    }
    
    func top() -> T? {
        list.last
    }
}
