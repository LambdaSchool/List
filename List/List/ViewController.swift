//
//  ViewController.swift
//  List
//
//  Created by Vijay Das on 11/13/18.
//  Copyright © 2018 Vijay Das. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func shouldAdd(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
            Model.shared.addItem(item: text)
            self.textField.text = ""
     }
    
    @IBAction func shouldReset(_ sender: Any) {
        Model.shared.resetItems()
        textField.text = ""
    
    }
    
}


