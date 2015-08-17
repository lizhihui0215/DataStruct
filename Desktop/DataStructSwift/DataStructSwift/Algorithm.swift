//
//  Arithmetic.swift
//  DataStructSwift
//
//  Created by lizhihui on 8/17/15.
//  Copyright (c) 2015 DOM. All rights reserved.
//

import Foundation


class Algorithm: NSObject {
   
    
    
    
    
    // T = (o^2)
    class func maxSubSequence1(var sequence: [Int]) -> Int{
        var maxSum = 0
        for var i = 0; i < sequence.count; i++ {
            var thisSum = 0
            for var j = i; j < sequence.count; j++ {
                thisSum += sequence[j]
            }
            if thisSum > maxSum{
                maxSum = thisSum
            }
            
        }
        return 0
    }
    
    // T = (o^3)
    class func maxSubSequence(var sequence: [Int]) -> Int{
        
        var maxSum = 0, thisSum = 0
        
        // {A1,A2.....An}
        for var i = 0; i <= sequence.count; i++ { //i left edge of the array
            for var j = i; j <= sequence.count; j++ { // j right edge of the array
                thisSum = 0
                for var k = i; k < j; k++ { // add from the i to j
                    thisSum += sequence[k]
                    println("sequence[\(k)] is \(sequence[k])")
                }
                println("thisSum is \(thisSum)")
                if thisSum > maxSum{
                    maxSum = thisSum
                }
            }
        }
        
        return maxSum
    }
    
}
