//
//  Arithmetic.swift
//  DataStructSwift
//
//  Created by lizhihui on 8/17/15.
//  Copyright (c) 2015 DOM. All rights reserved.
//

import Foundation


class Algorithm: NSObject {
   
    /**
    anagram the given string 
    ex. 
        the string `abc`
        after anagram 
        abc,acb,bac,bca,cab,cba
    
    :param: string the string to be anagram
    :param: count  the length of the string
    
    :returns: the collection of the string
    */
    class func anagram(string :String, var count: Int = 0) -> [String]{
        var collection = [String]()
        if count <= 1 {
            return collection
        }
        
        func rotated(string: String, index: Int = 0) -> [String]{
            var collection = [String]()
            
            var character = Array(string.characters)
            let temp = character[index]
            
            character.removeAtIndex(index)
            
            for var i = 0; i < character.count; i++ {
                // move the specifi character to the header
                let headcharacter = character[0]
                character[0] = character[i]
                character[i] = headcharacter
                var final = String(character)
                
                final.insert(temp, atIndex:final.startIndex)
                collection.append(final)
            }
            
            return collection
        }
        
        for var i = 0; i < string.characters.count; i++ {
            anagram(string, count: --count)
            
            collection += rotated(string, index: i)
            
        }
        
        return collection
    }
    
    /**
    find the index of the element use binary search
    
    :param: sortedArray    the sorted array to be searched
    :param: elementInArray the element in the array
    
    :returns: the index of the element or NSNotFount
    */
    class func binarySearchWith(sortedArray sortedArray:[Int], elementInArray:Int) ->Int{
        var low = 0, hight = sortedArray.count - 1, mid = 0;
        while low <= hight{
            // get the mid index of sortedArray
            mid = (low + hight) / 2;
            
            if sortedArray[mid] < elementInArray {
                low = mid + 1
            }else if sortedArray[mid] > elementInArray {
                hight = mid - 1
            }else{
                // find the index
                return mid
            }
            
        }
        // not find
        return NSNotFound
    }
    
    /**
    calculate the sum of triangle use recurrence
    
    :param: count the count of the triangle
    
    :returns: the sum of the triangle
    */
    class func triangleRecurrence(var count:Int = 0) -> Int{
        if count == 1{return 1}
        else{
            return  count + triangleRecurrence(--count) 
        }
    }
    
    
    /**
    calculate the sum of the triangle
    
    :count the count the triangle
    
    :returns: the sum of the triangle
    */
    class func triangle(var count:Int = 0) -> Int{
        var total = 0
        
        while count > 0 {
            total += count
            count--
        }
        
        return total
    }
    
    
    // the time to be cost  T = (o^2)
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
    
    // the time to be cost T = (o^3)
    class func maxSubSequence(var sequence: [Int]) -> Int{
        
        var maxSum = 0, thisSum = 0
        
        // {A1,A2.....An}
        for var i = 0; i <= sequence.count; i++ { //i left edge of the array
            for var j = i; j <= sequence.count; j++ { // j right edge of the array
                thisSum = 0
                for var k = i; k < j; k++ { // add from the i to j
                    thisSum += sequence[k]
                    print("sequence[\(k)] is \(sequence[k])")
                }
                print("thisSum is \(thisSum)")
                if thisSum > maxSum{
                    maxSum = thisSum
                }
            }
        }
        
        return maxSum
    }
    
}
