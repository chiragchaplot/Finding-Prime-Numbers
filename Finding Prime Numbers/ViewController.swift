//
//  ViewController.swift
//  Finding Prime Numbers
//
//  Created by Chirag Chaplot on 3/3/17.
//  Copyright © 2017 ChazIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    
    @IBAction func isItPrime(sender: AnyObject)
    {
        let number = Int(numTextField.text!)!
        var isPrime = true
        if number == 1
        {
            isPrime = false
        }
        if number != 2 && number != 1
        {
            for var i=2; i < number; i++
            {
                if number % i == 0
                {
                    isPrime = false
                    break
                }
            }
        }
        
        if isPrime
        {
            resultLabel.text = "isPrime"
        }
        else
        {
            resultLabel.text = "is not Prime"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

