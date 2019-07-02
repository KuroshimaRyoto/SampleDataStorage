//
//  ViewController.swift
//  SampleDataStorage
//
//  Created by 黒島涼人 on 2019/06/14.
//  Copyright © 2019 kuroshima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let userDefaults = UserDefaults.standard
    
        if let value = userDefaults.string(forKey: "text"){
            textField.text = value
        }
        
    }

    @IBAction func tapActionButton(_ sender: Any) {
        
        let userDefaults = UserDefaults.standard
        
        userDefaults.set(textField.text, forKey: "text")
        
        userDefaults.synchronize()
        
    }
    
}

