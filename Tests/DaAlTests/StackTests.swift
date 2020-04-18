//
//  StackTests.swift
//  DaAl
//
//  Created by Duy Tran on 4/15/20.
//

@testable
import DaAl

import XCTest

final class StackTests: XCTestCase {
    
    var sut: Stack<Int>!
    
    // MARK: - Life Cycle
    
    override func setUp() {
        sut = Stack(
            list: [0, 1, 2]
        )
    }
    
    override func tearDown() {
        sut = nil
    }
    
    // MARK: - Push
    
    func testPush() {
        sut.push(-1)
        
        XCTAssertEqual(
            sut.top(),
            -1
        )
    }
    
    // MARK: - Pop
    
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
