//
//  main.swift
//  02栈和队列
//
//  Created by Li_JinLin on 2020/9/6.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

import Foundation

print("Hello, World!")

public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
}

// 两数相加

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var result: ListNode? = nil
        if l1 == nil && l2 == nil {
            return result
        }
        var l3 = l1,l4 = l2
        var sum = (l3?.val ?? 0) + (l4?.val ?? 0)
        if sum >= 10 {
            sum = sum % 10
            result = ListNode.init(sum / 10 + sum)
            l3 = l3?.next ?? ListNode(0)
            l3!.val = l3!.val + 1
        } else {
            l3 = l3?.next
        }
        result = ListNode(sum)
        l4 = l4?.next
        result?.next = addTwoNumbers(l3, l4)
        return result
  
    }
}

// 使用Swift实现栈


// 使用数组实现栈
class Stack {
    var stack:[AnyObject]
    var isEmpty: Bool {
        return stack.isEmpty
    }
    var peek: AnyObject? {
        return stack.last
    }
    init() {
        stack = [AnyObject]()
    }
    
    func push(object: AnyObject) {
        stack.append(object)
    }
    func pop() -> AnyObject? {
        if isEmpty {
            return nil
        } else {
            return stack.removeLast()
        }
    }
}
