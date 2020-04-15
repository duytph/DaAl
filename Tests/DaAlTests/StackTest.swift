//
//  StackTest.swift
//  DaAl
//
//  Created by Duy Tran on 4/15/20.
//

@testable
import DaAl

import XCTest

final class StackTest: XCTestCase {
    
    var sut: Stack<Int>!
    
    override func setUp() {
        sut = Stack(
            list: [0, 1, 2]
        )
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testPush() {
        sut.push(-1)
        
        XCTAssertEqual(
            sut.top(),
            -1
        )
    }
    
    func testPop() {
        XCTAssertEqual(
            sut.pop(),
            2
        )
        
        XCTAssertEqual(
            sut.top(),
            1
        )
    }
}
