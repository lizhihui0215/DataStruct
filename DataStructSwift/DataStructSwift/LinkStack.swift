//
//  LinkStack.swift
//  DataStructSwift
//
//  Created by pccw on 15/8/17.
//  Copyright (c) 2015年 DOM. All rights reserved.
//

import Foundation

class LinkStack: NSObject {
    var list: LinkList?
    
    
    override init() {
        self.list = LinkList()
    }
    
    /**
        clean the stack
    */
    func emptyStack(){
        self.list?.makeEmpty()
    }
    
    /**
    push the element to the stack
    
    :param: element the element to be pushed
    */
    func push(element: AnyObject){
        self.list?.addNode(Node(element: element, next: nil))
    }
    
    /**
    peek the top element
    
    :returns: the top element
    */
    func top() -> AnyObject? {
        return self.list?.header.next
    }
    
    /**
    pop the top element
    */
    func pop() -> Node?{
        let node = self.list?.header.next
        self.list?.header.next = self.list?.header.next?.next
        return node
    }
    
    /**
    the description of the list stack
    
    :returns: the string of the list stack description
    */
    func linkStackDescription() -> String? {
        return self.list?.listDescription()
    }
    
}
