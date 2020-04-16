//
//  Array+Sorted.swift
//  DaAl
//
//  Created by Duy Tran on 4/15/20.
//

import Foundation

extension Array where Element: Comparable {
    
    // MARK: - Bubble Sort
    
    func bubbleSort() -> Self {
        guard count > 1 else { return self }
        
        var result = self
        
        for i in (result.startIndex ..< (result.endIndex - 1)) {
            for j in ((i + 1) ..< endIndex) {
                if result[i] > result[j] {
                    result.swapAt(i, j)
                }
            }
        }
        
        return result
    }
    
    mutating func bubbleSorted() {
        self = self.bubbleSort()
    }
    
    // MARK: - Merge Sort
    
    func mergeSort() -> Self {
        guard count > 1 else { return self }
        
        let midIndex = self.count / 2
        
        let leftArray = Array(
            self[startIndex ..< midIndex]
        )
            .mergeSort()
        
        let rightArray = Array(
            self[midIndex ..< endIndex]
        )
            .mergeSort()
        
        return leftArray.merge(with: rightArray)
    }
    
    mutating func mergeSorted() {
        self = self.mergeSort()
    }
    
    private func merge(with otherArray: [Element]) -> [Element] {
        var result = [Element]()
        result.reserveCapacity(
            count + otherArray.count
        )
        
        var myIndex = startIndex
        var oherIndex = otherArray.startIndex
        
        while (
            myIndex < endIndex
            && oherIndex < otherArray.endIndex
        ) {
            let myElement = self[myIndex]
            let otherElement = otherArray[oherIndex]
            
            if myElement < otherElement {
                result.append(myElement)
                myIndex += 1
            } else if myElement > otherElement {
                result.append(otherElement)
                oherIndex += 1
            } else {
                result.append(myElement)
                myIndex += 1
                
                result.append(otherElement)
                oherIndex += 1
            }
        }
        
        while myIndex < endIndex {
            result.append(
                self[myIndex]
            )
            myIndex += 1
        }
        
        while oherIndex < otherArray.endIndex {
            result.append(
                otherArray[oherIndex]
            )
            oherIndex += 1
        }
        
        return result
    }
    
    // MARK; - Quick Sort By Lomuto
    
    mutating func quickSortedByLomuto() {
        quickSortedByLomuto(
            low: 0,
            high: count - 1
        )
    }
    
    private mutating func quickSortedByLomuto(
        low: Int,
        high: Int
    ) {
        guard count > 1 else { return }
        
        guard low < high else { return }
        
        let pivotIndex = partitionByLomuto(
            low: low,
            high: high
        )
        
        quickSortedByLomuto(
            low: low,
            high: pivotIndex - 1
        )
        
        quickSortedByLomuto(
            low: pivotIndex + 1,
            high: high
        )
    }
    
    @discardableResult
    private mutating func partitionByLomuto(
        low: Int,
        high: Int
    ) -> Int {
        let pivot = self[high]

        var i = low

        for j in low ..< high {
            if self[j] < pivot {
                swapAt(i, j)
                i += 1
            }
        }

        swapAt(i, high)

        return i
    }
}
