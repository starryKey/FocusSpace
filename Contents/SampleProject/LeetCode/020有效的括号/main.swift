//
//  main.swift
//  020有效的括号
//
//  Created by Li_JinLin on 2020/11/1.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

import Foundation

print("Hello, World!")

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

let result = isValid("{[](})")
print(result)
