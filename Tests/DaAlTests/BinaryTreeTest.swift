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
    
    var node4: TreeNode<Int>!
    var node3: TreeNode<Int>!
    var node2: TreeNode<Int>!
    var node1: TreeNode<Int>!
    var node0: TreeNode<Int>!
    var sut: BinaryTree<Int>!
    
    // MARK: - Life Cycle
    
    override func setUp() {
        node4 = TreeNode(value: 4)
        node3 = TreeNode(value: 3)
        node2 = TreeNode(value: 2)
        node1 = TreeNode(value: 1, left: node3, right: node4)
        node0 = TreeNode(value: 0, left: node1, right: node2)
        
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
    
    // MARK: - Depth First Traversal
    
    func testInorderDepthFirstTraversal() {
        XCTAssertEqual(
            sut.inorderDepthFirstTraversal(),
            "[3, 1, 4, 0, 2]"
        )
    }
    
    func testPreorderDepthFirstTraversal() {
        XCTAssertEqual(
            sut.preorderDepthFirstTraversal(),
            "[0, 1, 3, 4, 2]"
        )
    }
    
    func testPostorderDepthFirstTraversal() {
        XCTAssertEqual(
            sut.postorderDepthFirstTraversal(),
            "[3, 4, 1, 2, 0]"
        )
    }
}
