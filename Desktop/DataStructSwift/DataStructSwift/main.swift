//
//  main.swift
//  DataStructSwift
//
//  Created by pccw on 15/8/14.
//  Copyright (c) 2015年 DOM. All rights reserved.
//

import Foundation

var sortableArray = [1,23,5,6,1,2,6,75,3,1,23,732,432,7,12,43,6,3,56,23]

var sortedArray = SortArithmetic.bubbleSortWith(sortableArray)

println(sortedArray)

var index = SortArithmetic.binarySearchWith(sortedArray: sortedArray, elementInArray: 732)

println("the Element `\(sortedArray[index])` index of array is \(index)")


var linkList = LinkList()

linkList.addNode(Node(element: "1",next: nil))
linkList.addNode(Node(element: "2",next: nil))
linkList.addNode(Node(element: "3",next: nil))
linkList.addNode(Node(element: "4",next: nil))
linkList.addNode(Node(element: "5",next: nil))
linkList.addNode(Node(element: "6",next: nil))
linkList.addNode(Node(element: "7",next: nil))
linkList.addNode(Node(element: "8",next: nil))

println("linklist is \(linkList.listDescription()) the last node is \(linkList.lastNode().element)")

linkList.delelteElement("4")

println("linklist is \(linkList.listDescription())")

var linkStack = LinkStack()

linkStack.push("1")
linkStack.push("2")
linkStack.push("3")
linkStack.push("4")
linkStack.push("5")
linkStack.push("6")

println("linklist is \(linkStack.linkStackDescription())")

linkStack.pop()
linkStack.pop()
linkStack.pop()

println("linklist is \(linkStack.linkStackDescription())")


























