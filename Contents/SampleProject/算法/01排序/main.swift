//
//  main.swift
//  01排序
//
//  Created by Li_JinLin on 2020/9/6.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

import Foundation

print("Hello, World!")

// 冒泡排序
func bubbleSort() {
    var list = [-1,2,4,1,0,9,6,7]
    for i in 1..<list.count {
        for j in 0..<(i - 1) {
            if list[j] > list[j + 1] {
                let temp = list[j]
                list[j] = list[j + 1]
                list[j+1] = temp
            }
        }
    }
    print(list)
}

