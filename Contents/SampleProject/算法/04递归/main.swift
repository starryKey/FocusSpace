//
//  main.swift
//  04递归
//
//  Created by Li_JinLin on 2020/9/6.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

import Foundation

print("Hello, World!")

// 使用递归求解汉诺塔问题
func hannio(n: Int, x: String, y: String, z: String) {
    if n < 1 {
        print("汉诺塔的层数不能小于1")
    } else if (n == 1) {
        print("移动：" + x + "->" + z)
    }
    else {
        hannio(n: n - 1, x: x, y: z, z: y)
        print("移动：" + x + "->" + z)
        hannio(n: n - 1, x: y, y: x, z: z)
    }
}

hannio(n: 3, x: "x", y: "y", z: "z")
