//
//  ViewController.swift
//  Postcard
//
//  Created by William Lam on 2014-12-29.
//  Copyright (c) 2014 William Lam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var EnterNameTextField: UITextField!
    @IBOutlet weak var EnterLastNameTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = EnterLastNameTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        EnterLastNameTextField.text = ""
        EnterLastNameTextField.resignFirstResponder() // tells keyboard to go away
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

