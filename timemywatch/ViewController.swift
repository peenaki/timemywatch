//
//  ViewController.swift
//  timemywatch
//
//  Created by Peenak Inamdar on 8/1/18.
//  Copyright © 2018 Peenak Inamdar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties

    @IBOutlet weak var watchNameTextFeild: UITextField!
    @IBOutlet weak var watchNameLabel: UILabel!
    @IBOutlet weak var watchNameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: Actions

    @IBAction func watchNameButton(_ sender: UIButton) {
        watchNameLabel.text = watchNameTextFeild.text
    }
}

