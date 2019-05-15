//
//  ViewController.swift
//  ModelingEntity
//
//  Created by Aditya Sanjaya on 15/05/19.
//  Copyright © 2019 Aditya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var coffeeLabel: UILabel!
    @IBOutlet weak var milkLabel: UILabel!
    
    
    var coffeeMaker : CoffeeMaker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        coffeeMaker = CoffeeMaker(milk: 200, brand: "Modena")
        print("Jumlah beans : \(coffeeMaker.amountOfBeans), Jumlah Milk: \(coffeeMaker.amountOfMilk)")
        updateLabel()
        print(coffeeMaker.voltage)
        coffeeMaker.runMotor()
    }
    @IBAction func addCoffeeButton(_ sender: Any) {
        coffeeMaker.addBeans(beans: 200)
        updateLabel()
    }
    @IBAction func addMilkButton(_ sender: Any) {
        coffeeMaker.addMilk(milk: 100)
        updateLabel()
    }
    @IBAction func makeCoffeeButton(_ sender: Any) {
        coffeeMaker.makeCoffee()
        updateLabel()
    }
    func updateLabel() {
        coffeeLabel.text = String(coffeeMaker.amountOfBeans)
        milkLabel.text = String(coffeeMaker.amountOfMilk)
    }
    

}

