//
//  ViewController.swift
//  XcodeGenSample
//
//  Created by Nguyen Van Nghia on 4/23/20.
//  Copyright © 2020 Nguyen Van Nghia. All rights reserved.
//

import UIKit
import DynamicFramework
import StaticFramework


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        
        print("1".test1())
        print("2".test2())
    }
    
}

