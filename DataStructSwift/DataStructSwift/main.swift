//
//  main.swift
//  DataStructSwift
//
//  Created by pccw on 15/8/14.
//  Copyright (c) 2015年 DOM. All rights reserved.
//

import Foundation

 /// sort
var sortableArray = [1,23,5,6,1,2,6,75,3,1,23,732,432,7,12,43,6,3,56,23]

var bubblesortedArray = SortArithmetic.bubbleSortWith(sortableArray)

var selectionSortedArray = SortArithmetic.selectionSort(sortableArray)

print("selection sort is \(selectionSortedArray)", appendNewline:true)

print(bubblesortedArray, appendNewline:true)

/// algorithm
var maxSum = Algorithm.maxSubSequence([1,-1,3,-3,1])

print("max sum is \(maxSum)", appendNewline:true)

print("the sum of the triangle is \(Algorithm.triangle(3))", appendNewline: true)

print("the recurrence sum of the triangle is \(Algorithm.triangleRecurrence(3))", appendNewline: true)


 /// search
var index = Algorithm.binarySearchWith(sortedArray: bubblesortedArray, elementInArray: 732)

print("the Element `\(bubblesortedArray[index])` index of array is \(index)", appendNewline:true)

 /// link list
var linkList = LinkList()

linkList.addNode(Node(element: "1",next: nil))
linkList.addNode(Node(element: "2",next: nil))
linkList.addNode(Node(element: "3",next: nil))
linkList.addNode(Node(element: "4",next: nil))
linkList.addNode(Node(element: "5",next: nil))
linkList.addNode(Node(element: "6",next: nil))
linkList.addNode(Node(element: "7",next: nil))
linkList.addNode(Node(element: "8",next: nil))

print("linklist is \(linkList.listDescription()) the last node is \(linkList.lastNode().element)", appendNewline:true)


linkList.delelteElement("4")

print("linklist is \(linkList.listDescription())", appendNewline:true)

 /// stack
var linkStack = LinkStack()

linkStack.push("1")
linkStack.push("2")
linkStack.push("3")
linkStack.push("4")
linkStack.push("5")
linkStack.push("6")

print("linklist is \(linkStack.linkStackDescription())", appendNewline:true)


linkStack.pop()
linkStack.pop()
linkStack.pop()

print("linklist is \(linkStack.linkStackDescription())", appendNewline:true)

 /// queue

var listQueue = ListQueue()

listQueue.insert("1")
listQueue.insert("2")
listQueue.insert("3")
listQueue.insert("4")
listQueue.insert("5")
listQueue.insert("6")

print("listQueue is \(listQueue.listQueueDescription())")

listQueue.remove()
print("listQueue is \(listQueue.listQueueDescription())")

var a = Algorithm.anagram("aee", count: 3)

print("a is \(a)")
























