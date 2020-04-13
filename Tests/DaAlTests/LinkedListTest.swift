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
    
    var node2: ListNode<Int>!
    var node1: ListNode<Int>!
    var node0: ListNode<Int>!
    
    var sut: LinkedList<Int>!
    
    override func setUp() {
        node2 = ListNode(value: 2)
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
    
    func testCount() {
        XCTAssertEqual(
            sut.count(),
            3
        )
    }
    
    func testSubscript() {
        XCTAssertNil(
            sut[.min]
        )
        XCTAssertNil(
            sut[.max]
        )
        XCTAssertEqual(
            sut[0],
            sut.root
        )
        XCTAssertEqual(
            sut[1],
            sut.root?.next
        )
        XCTAssertEqual(
            sut[2],
            sut.root?.next?.next
        )
    }
    
    func testDescription() {
        XCTAssertEqual(
            sut.description,
            "[0, 1, 2]"
        )
    }
}
