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
    
    var testCases: [TestCase]!
    
    // MARK: - Life Cycle
    
    override func setUp() {
        testCases = [
            .init(
                input: (
                    [],
                    1
                ),
                expected: nil
            ),
            .init(
                input: (
                    [1],
                    1
                ),
                expected: 0
            ),
            .init(
                input: (
                    [3, 6, 12, 13, 18],
                    1
                ),
                expected: nil
            ),
            .init(
                input: (
                    [9, 11, 13, 15, 17],
                    13
                ),
                expected: 2
            ),
            .init(
                input: (
                    [1, 3, 4, 16, 18],
                    18
                ),
                expected: 4
            )
        ]
    }
    
    override func tearDown() {
        testCases = nil
    }
    
    // MARK: - Binary Search
    
    func testBinarySearch() {
        for testCase in testCases {
            XCTAssertEqual(
                testCase
                    .input
                    .array
                    .binarySearch(
                        value: testCase
                            .input
                            .searchingValue
                ),
                testCase.expected
            )
        }
    }
}

// MARK: - Model

extension ArraySearchingTests {
    
    struct TestCase {
        let input: (array: [Int], searchingValue: Int)
        let expected: Int?
    }
}
