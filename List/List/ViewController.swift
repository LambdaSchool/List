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
    @IBOutlet weak var textView: UITextView!
    
    
    @IBAction func shouldAdd(_ sender: UITextField) {
        let text = textField.text ?? ""
        if !text.isEmpty {
        Model.shared.addItem(item: "* \(text)")
        textField.text = ""
    }
        let joined = Model.shared.items.joined(separator: "\n")
        textView.text = joined
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        Model.shared.resetItems()
        textView.text = ""
    
    }
    
    @IBAction func shouldPrintToConsole(_ sender: UIButton) {
        Swift.print(Model.shared.items)
        
    }
    

}
    



