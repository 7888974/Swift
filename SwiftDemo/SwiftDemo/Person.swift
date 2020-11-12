//
//  Person.swift
//  SwiftDemo
//
//  Created by ShiroJoy on 2020/11/12.
//  Copyright © 2020 yhw. All rights reserved.
//

import UIKit

class Person: NSObject {

    var name:String?
    var age = 5
    
    init(n:String, a:Int){
        super.init()

        name = n
        age = a

        
    }
    
    override var description: String{
        return "name:\(name) age:\(age)"
    }
    
    deinit {
        print("person deinit")
    }
    
}
