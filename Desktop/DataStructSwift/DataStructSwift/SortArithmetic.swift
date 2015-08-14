//
//  SortArithmetic.swift
//  DataStructSwift
//
//  Created by pccw on 15/8/14.
//  Copyright (c) 2015年 DOM. All rights reserved.
//

import Foundation

class SortArithmetic: NSObject {
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
}
