//
//  Wage.swift
//  window-shooper
//
//  Created by admin on 21/10/2018.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation

class Wage {

    class func getHours(forWage wage:Double, andPrice price:Double) -> Int{
//   print(Int(round(price / wage)))
//    return Int(round(price / wage))
         return Int(ceil(price / wage ))
    }
}
