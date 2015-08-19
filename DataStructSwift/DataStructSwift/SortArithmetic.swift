//
//  SortArithmetic.swift
//  DataStructSwift
//
//  Created by pccw on 15/8/14.
//  Copyright (c) 2015年 DOM. All rights reserved.
//

import Foundation

class SortArithmetic: NSObject {
    
    /**
    use bubble sort with the given array
    
    :param: array the unsort array
    
    :returns: the sorted array
    */
    class func bubbleSortWith(var array:[Int]) ->[Int]{
        for var index = 0; index < array.count; index++ {
            for var indexOfUnCompared = index; indexOfUnCompared < array.count; indexOfUnCompared++ {
                if array[index] > array[indexOfUnCompared]{
                    let temp = array[index]
                    array[index] = array[indexOfUnCompared]
                    array[indexOfUnCompared] = temp
                }
            }
        }
        return array
    }
    
    /**
    sort the array use selection sort
    
    :param: unsortedArray the array to be sorted
    
    :returns: the sorted array
    */
    class func selectionSort(var unsortedArray: [Int]) -> [Int]{
        
        for var i = 0; i < unsortedArray.count; i++ { // the element to be sorted
            var minPosition = i
            for var j = i; j < unsortedArray.count; j++ { // unsort array
                if unsortedArray[j] < unsortedArray[minPosition]{
                    minPosition = j // the min of the unsort array
                }
            }
            
            // exchange the min position with the element to be sorted
            let temp = unsortedArray[i]
            unsortedArray[i] = unsortedArray[minPosition]
            unsortedArray[minPosition] = temp
        }
        return unsortedArray
    }
}
