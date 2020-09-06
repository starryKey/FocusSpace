//
//  main.swift
//  03分治
//
//  Created by Li_JinLin on 2020/9/6.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

import Foundation

print("Hello, World!")

func findValue(_ list:[Int], _ targrt:Int) -> Bool {
    var middle = 0, low = 0, high = list.count - 1
    var isFind = false
    while (low < high) {
        middle = (high + low) / 2
        if list[middle] == targrt {
            print(String(format: "😄找到了,哈哈哈,index:%@", String(middle)))
            isFind = true
            break
        } else if (list[middle] > targrt) {
            // 说明在左侧 low -> middle - 1之间
            high = middle - 1
        } else {
            // 说明在右侧 middle -> high 之间
            low = middle + 1
        }
    }
    if !isFind {
        print("😠没找到，呜呜呜呜")
    }
    return isFind
}

// 使用分治法查找列表中的某个数
let list = Array(1...10)
let isFind = findValue(list, 8)
print(isFind)

