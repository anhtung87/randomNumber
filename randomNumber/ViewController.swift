//
//  ViewController.swift
//  randomNumber
//
//  Created by Hoang Tung on 10/20/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabelView: UILabel!
    
    @IBOutlet weak var buttonView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberLabelView.text = "0"
        numberLabelView.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 100)
        
        buttonView.setTitle("Random", for: UIControl.State.normal)
        buttonView.layer.cornerRadius = 16
        buttonView.layer.borderWidth = 2
        buttonView.layer.borderColor = UIColor.systemIndigo.cgColor
        buttonView.center = CGPoint(x: self.view.center.x, y: self.view.center.y + 125)
        
    }

    @IBAction func onPress(_ sender: Any) {
        let newNumber = Int.random(in: 1...100)
        numberLabelView.text = String(newNumber)
        numberLabelView.alpha = 0
        
        UIView.animate(withDuration: 1.7, delay: 0.1, animations: {
            self.numberLabelView.alpha = 1
        })
        
        UIView.animate(withDuration: 0.1) {
            self.numberLabelView.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 135)
        }
        
        UIView.animate(withDuration: 0.9, delay: 0.1, animations: {
            self.numberLabelView.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 100)
        })
    }
}

