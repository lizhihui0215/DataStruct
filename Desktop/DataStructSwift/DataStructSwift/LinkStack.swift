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
    
    func emptyStack(){
        self.list?.makeEmpty()
    }
    
    func push(element: AnyObject){
        self.list?.addNode(Node(element: element, next: nil))
    }
    
    func top() -> AnyObject? {
        return self.list?.header.next
    }
    
    func pop(){
        self.list?.header.next = self.list?.header.next?.next
    }
    
    func linkStackDescription() -> String? {
        return self.list?.listDescription()
    }
    
}
