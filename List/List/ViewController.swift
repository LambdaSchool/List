//
//  ViewController.swift
//  List
//
//  Created by Sameera Leola on 11/14/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        if (!text.isEmpty) {
            Model.shared.add(text)
            let joined = Model.shared.items.joined(separator: "\n")
            textView.text = joined
            textField.text = ""
        }
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        Model.shared.resetItems()
        textView.text = ""
    }
    
    @IBAction func printList(_ sender: Any) {
        print(Model.shared.items.joined(separator: "\n"))
    }
    
}
