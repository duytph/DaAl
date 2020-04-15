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
    
    override func setUp() {
        sut = Queue(
            list: [0, 1, 2]
        )
    }
    
    override func tearDown() {
        sut = nil
    }
}
