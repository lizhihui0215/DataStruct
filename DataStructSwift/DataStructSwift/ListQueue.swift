//
//  ListQueue.swift
//  DataStructSwift
//
//  Created by 李智慧 on 15/8/18.
//  Copyright (c) 2015年 DOM. All rights reserved.
//

import Foundation

class ListQueue: NSObject {
    /// the queue
    private var queue = LinkList()
    
    /// the size of the queue
    private var size = 0
    
    /// whether the queue is empty
    private var isEmpty: Bool { get { return queue.header.next == nil }}
    
    /**
    insert the element to the end of the queue
    
    :param: element the element to be inserted
    */
    func insert(element: AnyObject){
        self.size++
        self.queue.addNode(Node(element: element, next: nil))
    }
    
    /**
    remove the element from the queue
    
    :returns: the element to be removed
    */
    func remove() -> AnyObject?{
        let node = self.queue.header.next
        if !self.isEmpty{ self.size-- }
        self.queue.header.next = node?.next
        
        return node
    }
    
    /**
    peek the top element of the queue
    
    :returns: the element which is wanna
    */
    func peek() -> AnyObject?{
        return self.queue.header.next
    }
    
    /**
    the description of the queue
    
    :returns: the description
    */
    func listQueueDescription() -> String? {
        return self.queue.listDescription()
    }
}
