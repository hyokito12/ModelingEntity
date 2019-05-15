//
//  CoffeeMaker.swift
//  ModelingEntity
//
//  Created by Aditya Sanjaya on 15/05/19.
//  Copyright © 2019 Aditya. All rights reserved.
//

import Foundation

class CoffeeMaker : Machine {
    var amountOfBeans: Int = 100
    var amountOfMilk: Int
    var brand: String
    
    init(milk:Int, brand: String) {
        amountOfMilk = milk
        self.brand = brand
    }
    
    func addMilk(milk:Int) {
        amountOfMilk += milk
    }
    
    func addBeans(beans:Int) {
        amountOfBeans += beans
    }
    
    func makeCoffee() {
        amountOfBeans -= 3
        amountOfMilk -= 4
    }
}
