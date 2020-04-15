//
//  ArraySortingTest.swift
//  DaAlTests
//
//  Created by Duy Tran on 4/15/20.
//

@testable
import DaAl

import XCTest

class ArraySortingTest: XCTestCase {
    
    var sut: [Int]!
    var sorted: [Int]!
    
    override func setUp() {
        sut = [3, 1, 4, 2, 0]
        sorted = [0, 1, 2, 3, 4]
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testBubleSorted() {
        XCTAssertEqual(
            sut.sorted(),
            sorted
        )
    }
}
