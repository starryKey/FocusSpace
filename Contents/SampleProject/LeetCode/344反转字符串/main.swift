//
//  main.swift
//  344反转字符串
//
//  Created by Li_JinLin on 2020/9/6.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

import Foundation

print("Hello, World!")

/// 给出一个字符串，要求按照单词顺序进行反转
/// - Parameter s: 输入字符串
/// - Returns: 反转后的字符串
func reverseWord(s: String?) -> String? {
    guard let str = s else { return nil }
    var chars = Array(str), start = 0
    // 字符串整体反转
    reverse(&chars, 0, chars.count - 1)
    for i in 0..<chars.count {
        if  i == chars.count - 1 || chars[i + 1] == " " {
            // 单个字符串反转
            reverse(&chars, start, i)
            // 空格情况
            start = i + 2
        }
    }
    return String(chars)
}


fileprivate func reverse<T>(_ chars: inout [T], _ start: Int, _ end: Int){
    var start = start, end = end
    while start < end {
        swap(&chars, start, end)
        start += 1
        end -= 1
    }
}

fileprivate func swap<T>(_ chars: inout [T], _ p: Int, _ q: Int){
    //  第一个跟最后一个交换
    (chars[p], chars[q]) = (chars[q], chars[p])
    print(chars)
}
