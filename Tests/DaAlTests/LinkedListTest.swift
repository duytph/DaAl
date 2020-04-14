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
    
    func testInsertAtRoot() {
        let count = sut.count()
        
        sut.insert(
            -999,
            at: 0
        )
        
        XCTAssertEqual(
            sut.count(),
            count + 1
        )
        
        XCTAssertEqual(
            sut[1],
            node0
        )
        
        XCTAssertEqual(
            sut.root?.value,
            -999
        )
    }
    
    func testInsertAtMiddle() {
        let count = sut.count()
        
        sut.insert(
            -999,
            at: 1
        )
        
        XCTAssertEqual(
            sut.count(),
            count + 1
        )
        
        XCTAssertEqual(
            sut[2],
            node1
        )
        
        XCTAssertEqual(
            sut[1]?.value,
            -999
        )
    }
    
    func testInsertAtTail() {
        let count = sut.count()
        
        sut.insert(
            -999,
            at: 2
        )
        
        XCTAssertEqual(
            sut.count(),
            count + 1
        )
        
        XCTAssertEqual(
            sut[3],
            node2
        )
        
        XCTAssertEqual(
            sut[2]?.value,
            -999
        )
    }
    
    func testInsertWhereItBelowListBound() {
        let count = sut.count()
        
        sut.insert(
            -999,
            at: -1
        )
        
        XCTAssertEqual(
            sut.count(),
            count
        )
        
        XCTAssertEqual(
            sut.root,
            node0
        )
    }
    
    func testInsertWhereItAboveListBound() {
        let count = sut.count()
        
        sut.insert(
            -999,
            at: count + 1
        )
        
        XCTAssertEqual(
            sut.count(),
            count
        )
        
        XCTAssertEqual(
            sut[2],
            node2
        )
    }
    
    func testRemoveAtRoot() {
        let count = sut.count()
        
        sut.remove(at: 0)
        
        XCTAssertEqual(
            sut.count(),
            count - 1
        )
        
        XCTAssertEqual(
            sut[0],
            node1
        )
    }
    
    func testRemoveAtMiddle() {
        let count = sut.count()

        sut.remove(at: 1)

        XCTAssertEqual(
            sut.count(),
            count - 1
        )

        XCTAssertEqual(
            sut[1],
            node2
        )
    }

    func testRemoveAtTail() {
        let count = sut.count()

        sut.remove(at: 2)

        XCTAssertEqual(
            sut.count(),
            count - 1
        )
    }

    func testRemoveWhereItBelowListBound() {
        let count = sut.count()

        sut.remove(at: -1)

        XCTAssertEqual(
            sut.count(),
            count
        )

        XCTAssertEqual(
            sut.root,
            node0
        )
    }

    func testRemoveWhereItAboveListBound() {
        let count = sut.count()

        sut.remove(at: count)

        XCTAssertEqual(
            sut.count(),
            count
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
