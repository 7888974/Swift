//
//  ViewController.swift
//  SwiftDemo
//
//  Created by ShiroJoy on 2020/11/12.
//  Copyright © 2020 yhw. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loadData()
        let p = [Person]()
        
    }

    

}

extension ViewController{
    
    func loadData(){
        
        DispatchQueue.global(qos: .default).async {
            print("耗时操作")
            
            DispatchQueue.main.async {
                print("操作完成")
            }
        }
    }
}
