//
//  main.swift
//  001两数之和
//
//  Created by Li_JinLin on 2020/9/6.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

import Foundation

print("Hello, World!")

// 001 两数之和
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int:Int]()
    var result = [Int]()
    for (i, num) in nums.enumerated() {
        if let lastIndex = dict[target - num] {
            result = [lastIndex, i]
            return result
        } else {
            dict[num] = i
        }
        
    }
    return result
}


let result = twoSum([1,2,3,4,5,6,7,8], 7)
print(result)
