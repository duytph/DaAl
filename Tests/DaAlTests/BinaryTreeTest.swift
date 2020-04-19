//
//  BinaryTreeTest.swift
//  DaAlTests
//
//  Created by Duy Tran on 4/16/20.
//

@testable
import DaAl

import XCTest

final class BinaryTreeTest: XCTestCase {
    
    var node4: BinaryTreeNode<Int>!
    var node3: BinaryTreeNode<Int>!
    var node2: BinaryTreeNode<Int>!
    var node1: BinaryTreeNode<Int>!
    var node0: BinaryTreeNode<Int>!
    var sut: BinaryTree<Int>!
    
    // MARK: - Life Cycle
    
    override func setUp() {
        node4 = BinaryTreeNode(value: 4)
        node3 = BinaryTreeNode(value: 3)
        node2 = BinaryTreeNode(value: 2)
        node1 = BinaryTreeNode(value: 1, left: node3, right: node4)
        node0 = BinaryTreeNode(value: 0, left: node1, right: node2)
        
        sut = BinaryTree(root: node0)
    }
    
    override func tearDown() {
        node4 = nil
        node3 = nil
        node2 = nil
        node1 = nil
        node0 = nil
        
        sut = nil
    }
    
    // MARK: - Traversal
    
    func testInorderDepthFirstTraversal() {
        XCTAssertEqual(
            sut.inorderDepthFirstTraversal(from: sut.root),
            "3, 1, 4, 0, 2"
        )
    }
    
    func testPreorderDepthFirstTraversal() {
        XCTAssertEqual(
            sut.preorderDepthFirstTraversal(from: sut.root),
            "0, 1, 3, 4, 2"
        )
    }
    
    func testPostorderDepthFirstTraversal() {
        XCTAssertEqual(
            sut.postorderDepthFirstTraversal(from: sut.root),
            "3, 4, 1, 2, 0"
        )
    }
}
