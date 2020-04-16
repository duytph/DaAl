//
//  ArraySortingTest.swift
//  DaAlTests
//
//  Created by Duy Tran on 4/15/20.
//

@testable
import DaAl

import XCTest

final class ArraySortingTest: XCTestCase {
    
    var testCases: [TestCase]!
    
    override func setUp() {
        testCases = [
            .init(
                input: [1, 2, 0],
                expected: [0, 1, 2]
            ),
            .init(
                input: [3, 1, 4, 2, 0],
                expected: [0, 1, 2, 3, 4]
            ),
            .init(
                input: [54, 61, 21, 17, 71, 72, 17, 66, 56, 2],
                expected: [2, 17, 17, 21, 54, 56, 61, 66, 71, 72]
            ),
            .init(
                input: [38, 69, -33, 40, 54, 43, -34, 94],
                expected: [-34, -33, 38, 40, 43, 54, 69, 94]
            )
        ]
    }
    
    override func tearDown() {
        testCases = nil
    }
    
    func testBubleSort() {
        for testCase in testCases {
            XCTAssertEqual(
                testCase.input.bubbleSort(),
                testCase.expected
            )
        }
    }
    
    func testBubleSorted() {
        for testCase in testCases {
            var output = testCase.input
            output.bubbleSorted()
            
            XCTAssertEqual(
                output,
                testCase.expected
            )
        }
    }
    
    func testMergeSort() {
        for testCase in testCases {
            XCTAssertEqual(
                testCase.input.mergeSort(),
                testCase.expected
            )
        }
    }
    
    func testMergeSorted() {
        for testCase in testCases {
            var output = testCase.input
            output.mergeSorted()
            
            XCTAssertEqual(
                output,
                testCase.expected
            )
        }
    }
    
    func testQuickSortByLomuto() {
        for testCase in testCases {
            var output = testCase.input
            output.quickSortedByLomuto()
            
            XCTAssertEqual(
                output,
                testCase.expected
            )
        }
    }
}

extension ArraySortingTest {
    
    struct TestCase {
        let input: [Int]
        let expected: [Int]
    }
}
