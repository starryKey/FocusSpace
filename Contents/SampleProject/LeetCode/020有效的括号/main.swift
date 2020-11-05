//
//  main.swift
//  020有效的括号
//
//  Created by Li_JinLin on 2020/11/1.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

import Foundation

print("Hello, World!")

// 笨方法
func isValid(_ s: String) -> Bool {
    //边界情况，奇数必为false
    if s.count % 2 != 0 {
        return false
    }
    var tempString = s
    
    while tempString.contains("()") || tempString.contains("[]") || tempString.contains("{}") {
        tempString = tempString.replacingOccurrences(of: "()", with: "")
        tempString = tempString.replacingOccurrences(of: "[]", with: "")
        tempString = tempString.replacingOccurrences(of: "{}", with: "")
    }
    return tempString.isEmpty
}

let result = isValid("{[}]")
print(result)

// 正常理论方法
// 解题思路：利用栈的结构，可以将字符串理解为两部分，实际为同一个栈，左括号入栈操作，右括号出栈操作。通过判断入栈的是否和下一个出栈的是否相等来进行消除栈。最后判断栈是否为空，为空则有效
func isValidString(_ s: String) -> Bool {
    //边界情况
    if s.isEmpty {
        return false
    }
    // 奇数必为false
    if s.count % 2 != 0 {
        return false
    }
    var stack = [Character]() //创建可变字符数组（当做栈）
    for char in s { // 遍历字符串
        // 遇上左括号，就把右括号入栈
        if char == "(" {
            stack.append(")")
        } else if char == "{" {
            stack.append("}")
        } else if char == "[" {
            stack.append("]")
        } else {
            if (stack.last == char) {
                //栈顶括号与之匹配，则移除
                stack.removeLast()
            } else {
                // 栈顶括号与之不匹配,立即返回
                return false
            }
        }
    }
    return stack.isEmpty // 遍历完后栈为空，则所有括号都有效
}

var isVal = isValidString("")
print(isVal)

