//
//  wage.swift
//  cal-app
//
//  Created by Muhammad Elsaied on 6/7/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import Foundation

class Wage {
     /*
     we want to calculate how many hour you should work to get these item
     create func to calculate
     number of hour / price item ====
     ///// problem result may be float == turn it into near high number
 
    */
    class func hourToWork (forWage wage:Double,andPrice price:Double)->Int {
        return Int(ceil( price / wage ))
    
    }
}
