//
//  ViewController.swift
//  Kalkulator
//
//  Created by Mariola Roznaska on 16/02/2019.
//  Copyright © 2019 Mariola Roznaska. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calcDisplay: UILabel!
    var userStartTyping = true
    var firstOperant = 0
    var event = ""
    @IBOutlet weak var currentValue: UILabel!
    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var firstValue: UILabel!
    @IBOutlet weak var equlsLabel: UILabel!
    
    @IBAction func resetButton(_ sender: UIButton) {
        userStartTyping = true
        firstOperant = 0
        calcDisplay.text = "0"
        currentValue.text = ""
        firstValue.text = ""
        equlsLabel.text = ""
        eventLabel.text = ""
    }
    @IBAction func eventAction(_ sender: UIButton) {
        userStartTyping = true
        firstOperant = Int(calcDisplay.text!)!
        event = sender.currentTitle!
        
    }
    @IBAction func equalPressed(_ sender: UIButton) {
        
        //calcDisplay.text = String(Int(calcDisplay.text!)! + firstOperant)
        switch event{
        case "+":
            calcDisplay.text = String(Int(calcDisplay.text!)! + firstOperant)
            
        case "-":
            calcDisplay.text = String(firstOperant - Int(calcDisplay.text!)!)
        case "*":
            calcDisplay.text = String(Int(calcDisplay.text!)! * firstOperant)
        case "/":
            calcDisplay.text = String(firstOperant / Int(calcDisplay.text!)! )
        case "!":
            var silnia=1
            let liczSil = Int(calcDisplay.text!)!
            
            for number in 1...liczSil{
                silnia = number * silnia
            }
            calcDisplay.text = String(silnia)
        case "potega":

            var wyn=1
            let potega = Int(calcDisplay.text!)!
            
            for _ in 1...potega {
                
                wyn = firstOperant * wyn
                print(wyn)
            }
            calcDisplay.text = String(wyn)
            
        default:
            print("Wybrano inny przycisk ktory nie jest obslugiwany")
        }
        
       equlsLabel.text = "="
        
        
        
    }
    @IBAction func potegaFunction(_ sender: UIButton) {
        
        var wyn=1
        let potega = Int(calcDisplay.text!)!
        
        for _ in 1...potega {
            
            wyn = firstOperant * wyn
            print(wyn)
        }
        calcDisplay.text = String(wyn)
        
    }
    @IBAction func digitalPressed(_ sender: UIButton) {
        
        if(userStartTyping == true){
            calcDisplay.text = (sender.currentTitle)!
            userStartTyping = false
        }
        else{
            calcDisplay.text = (calcDisplay.text)! + (sender.currentTitle)!
        }
        
        print("wcisnieto guzik")
        firstValue.text = String(firstOperant)
         eventLabel.text = String(event)
        currentValue.text = calcDisplay.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

