//
//  ViewController.swift
//  SimpleApp
//
//  Created by X on 10/02/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!

    @IBAction func buttonPressed(sender: UIButton) {
        //print("<\(textField.text!)>")
        label.text = "Hello, " + textField.text!

        textField.resignFirstResponder()
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //?? not working - view.resignFirstResponder()
        textField.resignFirstResponder()
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

