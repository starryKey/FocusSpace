//
//  AlgorithmsViewController.swift
//  InterviewDemo
//
//  Created by Li_JinLin on 2020/7/8.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

import UIKit

class AlgorithmsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 一、基础的数据结构
        // 01 数组
        // --**实现方式**--
        /*
        var cArr = ContiguousArray<Any>(repeating: 3, count: 2)
        cArr.reserveCapacity(10)// 10
        
        print(cArr.count)       // 2
        print(cArr.capacity)    // 2
        cArr.append(1)
        print(cArr.capacity)    // 4
        cArr.append(2)
        print(cArr.capacity)    // 4
        cArr.append(3)
        print(cArr.capacity)    // 8
        
        cArr.removeAll()
        print(cArr.count)       // 0
        print(cArr.capacity)    // 0
        
        var testArr = Array(1...7)
        let middle = testArr.count / 2
        var firstHalf = testArr[..<middle]
        let secondHalf = testArr[middle...]
        firstHalf[0] = 10
        print(secondHalf.startIndex) // 3
        print(testArr)               // [1, 2, 3, 4, 5, 6, 7]
        print(firstHalf)             // [10, 2, 3]
        testArr[0] = 20
        print(firstHalf)             // [10, 2, 3]
        print(testArr)               // [20, 2, 3, 4, 5, 6, 7]
        
        
        var objArr = ["hello","world","coding","iOS"]
        let half = objArr.count / 2
        var firstPart = objArr[..<half]
        var secondPart = objArr[half...]
        print(address(of: &objArr))
        firstPart[0] = "web"
        print(objArr)
        
        print(address(of: &firstPart))
        print(address(of: &secondPart))
        
        var arrSlice:ArraySlice = [10,11]
        arrSlice[0] = 0
        print(arrSlice)
        */
        // 字典
        
        var dic = ["a": "1", "b": nil, "c": "3", "d": ""]
        if let bValue = dic["b"] {
            print("b value is \(String(describing: bValue))")
        } else {
            print("b has no value")
        }
        
        let pairsWithDuplicateKeys = [("a", 1), ("b", 2), ("a", 3), ("b", 4)]
        let first = Dictionary(pairsWithDuplicateKeys, uniquingKeysWith: {(index, _) in index})
        print(first)
        let firstValues = Dictionary(pairsWithDuplicateKeys,
                                     uniquingKeysWith: { (first, _) in first })
        // ["b": 2, "a": 1]
        print(firstValues)
         
        let lastValues = Dictionary(pairsWithDuplicateKeys,
                                    uniquingKeysWith: { (_, last) in last })
        // ["b": 4, "a": 3]
        print(lastValues)
        
        // 创建一个空字典
//        let emptyDic1 = Dictionary<String, Any>()
//        let emptyDic2:[String:String] = [:]
//        let emptyDic3 = [String:String]()
//        let emptyDic4:Dictionary<String, String> = [:]
    
        var dict = ["0":"hello", "1":"world", "2":"!"]
        // 有则更新，无则新增
        dic["3"] = "Coding"
        // 有则更新，并返回旧值，无则新增
        if let oldValue = dict.updateValue("🍎", forKey: "3"){
            print("The old value of \(oldValue) was replaced with a new one.")
        } else {
            print("No value was found in the dictionary for that key.")
        }
        print(dict)
        // Prints "No value was found in the dictionary for that key."
        
        // 有则删除，无则相当于无操作
        dict.removeValue(forKey: "0")
        // 删除指定key:value
        if let index = dict.index(forKey: "1") {
            dict.remove(at: index)
        }
        // 删除全部
        dict.removeAll()
    }
    
    //打印内存地址
    func address(of object: UnsafeRawPointer) -> String {
        let addr = Int(bitPattern: object)
        return String(format: "%p", addr)
    }

}


protocol Stack {
    // 持有的元素类型
    associatedtype Element
    // 是否为空
    var isEmpty: Bool{ get }
    // 栈顶元素
    var peek: Element? { get }
    
    // 进栈
    mutating func push(_ newElement: Element)
    // 出栈
    mutating func pop() -> Element?
}





// 使用数组实现栈
//class Stack {
//    var stack:[AnyObject]
//    var isEmpty: Bool {
//        return stack.isEmpty
//    }
//    var peek: AnyObject? {
//        return stack.last
//    }
//    init() {
//        stack = [AnyObject]()
//    }
//
//    func push(object: AnyObject) {
//        stack.append(object)
//    }
//    func pop() -> AnyObject? {
//        if isEmpty {
//            return nil
//        } else {
//            return stack.removeLast()
//        }
//    }
//}

//使用数组实现队列
class Queue {
    
}
