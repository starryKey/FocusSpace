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
        var arr = ContiguousArray<Int>()
        
        arr.append(0)
        arr.append(1)
        print(arr)
        
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
