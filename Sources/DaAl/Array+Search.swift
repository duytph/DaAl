//
//  Array+BinarySearch.swift
//  DaAl
//
//  Created by Duy Tran on 4/14/20.
//

import Foundation

extension Array where Element: Comparable {
    
    /// Returns the first index where the specified value appears in the collection.
    ///
    /// Assumption:: The sender array has distinct value and is sorted aldready
    func binarySearch(value: Element) -> Int? {
        
        var slice = ArraySlice(self)
        
        while !slice.isEmpty {
            let midIndex = (slice.startIndex + slice.endIndex) / 2
            let midValue = slice[midIndex]
            
            if midValue == value {
                return midIndex
            } else if midValue < value, midIndex + 1 < slice.endIndex {
                slice = slice[midIndex + 1 ..< slice.endIndex]
            } else if slice.startIndex < midIndex {
                slice = slice[slice.startIndex ..< midIndex]
            } else {
                break
            }
        }
        
        return nil
    }
}
