//
//  main.swift
//  00集合
//
//  Created by Li_JinLin on 2020/9/6.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

import Foundation

print("Hello, World!")
//***（1）数组

//01数组的常见操作
var arr2 = [Any]()
arr2.append(1)
print(arr2)

var arr1 = Array<Int>()
arr1.append(1)
print(arr2)
arr1.remove(at: 0)
arr1[1] = 6
arr1 += [8]
print(arr1)

//数组的遍历
// 方式1
arr1.forEach { (value) in
    print(value)
}

// 方式2
for (index, value) in arr1.enumerated() {
    print("\(index): '\(value)'")
}
// 方式3
//for i in arr1 {
//    print(arr1[i])
//}

for i in 0..<arr1.count - 1 {
    print(i)
}
// map
let strArr = arr1.map { (value) -> String in
    return String.init(format: "\(value)")
}

let names: Set = ["Sofia", "Camilla", "Martina", "Mateo", "Nicolás"]
var shorterIndices: [Set<String>.Index] = []
for (i, name) in zip(names.indices, names) {
 if name.count <= 5 {
     shorterIndices.append(i)
 }
}

var value = arr1[0]
let arr3 = [1,2,3]
let arr4 = [Int](repeating: 0, count: 3)


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

//TODO: 使用数组实现队列

// 字典

// 集合
