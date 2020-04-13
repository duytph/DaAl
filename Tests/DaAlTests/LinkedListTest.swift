//
//  LinkedListTest.swift
//  DaAlTests
//
//  Created by Duy Trần on 4/13/20.
//

@testable
import DaAl

import XCTest

class LinkedListTest: XCTestCase {
    
    var node5: ListNode<Int>!
    var node4: ListNode<Int>!
    var node3: ListNode<Int>!
    var node2: ListNode<Int>!
    var node1: ListNode<Int>!
    var node0: ListNode<Int>!
    
    var sut: LinkedList<Int>!
    
    override func setUp() {
        node5 = ListNode(value: 5)
        node4 = ListNode(value: 4, next: node5)
        node3 = ListNode(value: 3, next: node4)
        node2 = ListNode(value: 2, next: node3)
        node1 = ListNode(value: 1, next: node2)
        node0 = ListNode(value: 0, next: node1)
        
        sut = LinkedList(root: node0)
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testRoot() {
        XCTAssertEqual(
            sut.root,
            node0
        )
    }
}
