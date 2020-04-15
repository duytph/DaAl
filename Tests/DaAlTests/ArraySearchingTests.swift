//
//  ArraySearchingTests.swift
//  DaAlTests
//
//  Created by Duy Tran on 4/14/20.
//

import Foundation

@testable
import DaAl

import XCTest

final class ArraySearchingTests: XCTestCase {
    
    func testBinarySearch() {
        let sut = [0, 1, 2, 3, 4, 5]
        
        for (offset, element) in sut.enumerated() {
            XCTAssertEqual(
                sut.binarySearch(value: element),
                offset
            )
        }
    }
}
