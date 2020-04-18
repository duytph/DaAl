//
//  QueueTests.swift
//  DaAlTests
//
//  Created by Duy Tran on 4/15/20.
//

@testable
import DaAl

import XCTest

final class QueueTests: XCTestCase {
    
    var sut: Queue<Int>!
    
    // MARK: - Life Cycle
    
    override func setUp() {
        sut = Queue(
            list: [0, 1, 2]
        )
    }
    
    override func tearDown() {
        sut = nil
    }
    
    // MARK: - Peek
    
    func testPeek() {
        XCTAssertEqual(
            sut.peek(),
            0
        )
    }
    
    // MARK: - Enqueue
    
    func testEnqueue() {
        let count = sut.list.count
        
        sut.enqueue(-1)
        
        XCTAssertEqual(
            sut.list.count,
            count + 1
        )
        
        XCTAssertEqual(
            sut.list.last,
            -1
        )
    }
    
    // MARK: - Dequeue
    
    func testDequeue() {
        let count = sut.list.count
        
        XCTAssertEqual(
            sut.dequeue(),
            0
        )
        
        XCTAssertEqual(
            sut.list.count,
            count - 1
        )
    }
}
