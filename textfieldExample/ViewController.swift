//
//  ViewController.swift
//  textfieldExample
//
//  Created by macbook on 8/2/18.
//  Copyright © 2018 Rajasekhar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var textLabel: CopyableLabel!

    @IBOutlet weak var textfiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textfiled.delegate = self
         self.textfiled.text = ""
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.textfiled.selectAll(nil)
        self.textfiled.resignFirstResponder()
        self.view.endEditing(true)

    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        textField.textColor = .red
        return true //do not show keyboard nor cursor
    }
   

}

