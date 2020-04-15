//
//  Array+Sorted.swift
//  DaAl
//
//  Created by Duy Tran on 4/15/20.
//

import Foundation

extension Array where Element: Comparable {
    
    mutating func bubbleSorted() {
        guard count > 1 else { return }
        
        for i in (startIndex ..< (endIndex - 1)) {
            for j in ((i + 1) ..< endIndex) {
                if self[i] > self[j] {
                    self.swapAt(i, j)
                }
            }
        }
    }
    
    mutating func mergeSorted() {
        guard count > 1 else { return }
        
        let midIndex = (startIndex + endIndex) / 2
        let leftArray = self[startIndex ..< midIndex].sorted()
        let rightArray = self[midIndex ..< endIndex].sorted()
        
        self = leftArray.merge(with: rightArray)
    }
    
    // MARK: - Ultilities
    
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
}
