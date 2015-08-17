//
//  LinkList.swift
//  DataStructSwift
//
//  Created by lizhihui on 15/8/14.
//  Copyright © 2015年 DOM. All rights reserved.
//

import Foundation


class Node: NSObject {
    var element: AnyObject?
    var next: Node?
    init(element: AnyObject?, next: Node?) {
        self.element = element
        self.next = next
    }
}

class LinkList: NSObject {
    var header: Node = Node(element: nil, next: nil)
    
    var isEmpty: Bool{ get{ return self.header.next == nil } }
    
    /*!
    clean the link list
    */
    func makeEmpty(){
       self.header.next = nil
    }
    
    /*!
    check the node if it is the last node of the linklist
    
    :param: node the node
    
    :returns: wheather is last node
    */
    func isLastNode(node: Node) -> Bool{
        return node.next == nil
    }
    
    /*!
    the description of the linklist
    
    :returns: a String is description of the linklist
    */
    func listDescription() -> String{
        var node = self.header.next
        
        var description = "< header->"
        
        while node != self.lastNode() {
            description += "\(node!.element?.description)->"
            node = node?.next
        }
        
        description += "\(self.lastNode().element?.description) >"
        
        return description
    }
    
    /*!
    Find the element of the node
    
    :param: element the element
    
    :returns: the node of the element
    */
    func findElement(element: AnyObject) -> Node? {
        var node = self.header.next
        while !element.isEqual(node?.element){
            node = node?.next
        }
        return node
    }
    
    /*!
    Delete the element which in the linklist
    
    :param: element the element to be deleted
    
    :returns: if success
    */
    func delelteElement(element: AnyObject) -> Bool{
        
        let previousNode = self.findPrevious(element)
        
        var success = false
        
        if (previousNode != nil) {
            previousNode?.next = self.findElement(element)?.next
            success = true
        }
        
        return success
    }
    
    /*!
    Find the previous node of the the element
    
    :param: element the element
    
    :returns: the previous node of the element
    */
    func findPrevious(element: AnyObject) -> Node? {
        var node = self.header.next
        while !element.isEqual(node?.next?.element) {
            node = node?.next
        }
        return node
    }
    
    
    /*!
    Find the last node of the linklist
    
    :returns: the last node
    */
    func lastNode() -> Node! {
        var node = self.header
        while node.next != nil {
            node = node.next!
        }
        return node
    }
    
    /*!
    Add the node to the last of the linklist
    
    :param: node the node to be add
    */
    func addNode(node: Node){
        self.lastNode().next = node
    }
}
