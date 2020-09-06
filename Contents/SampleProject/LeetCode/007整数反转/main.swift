//
//  main.swift
//  007整数反转
//
//  Created by Li_JinLin on 2020/9/6.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

import Foundation

print("Hello, World!")



// 007 整数反转
func reverseNumber(_ n: Int) -> Int {
    var result = 0
    var value = n
    while value != 0 {
        result = result * 10 + value % 10
        value = value / 10
    }
    if result > Int32.max || result < Int32.min {
        return 0
    }
    return result
}

func reverse(_ x: Int) -> Int {
    var result = 0
    var value = x
    while value != 0 {
        let m = value % 10
        value = value / 10
        result = result * 10 + m
        print("m = \(m), value=\(value) result = \(result)")
    }
    if result > Int32.max || result < Int32.min {
        return 0
    }
    return result
}

let rev = reverse(123)
print(rev)

