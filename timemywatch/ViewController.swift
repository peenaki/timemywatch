//
//  ViewController.swift
//  timemywatch
//
//  Created by Peenak Inamdar on 8/1/18.
//  Copyright © 2018 Peenak Inamdar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties

    @IBOutlet weak var watchNameTextFeild: UITextField!
    @IBOutlet weak var watchNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Handle the text field's user input through delegate callbacks.
        watchNameTextFeild.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        watchNameLabel.text = watchNameTextFeild.text
        watchNameTextFeild.text?.removeAll()
    }
    
    //MARK: Actions
    @IBAction func setDefaultWatchNameLabel(_ sender: UIButton) {
        watchNameTextFeild.text?.removeAll()
        watchNameLabel.text = "Watch Name"
    }

}

