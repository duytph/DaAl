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
}
