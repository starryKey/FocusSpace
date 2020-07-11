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
        
        
        
    }
    
    //打印内存地址
    func address(of object: UnsafeRawPointer) -> String {
        let addr = Int(bitPattern: object)
        return String(format: "%p", addr)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
