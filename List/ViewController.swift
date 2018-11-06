//
//  ViewController.swift
//  List
//
//  Created by Ivan Caldwell on 11/6/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        if !text.isEmpty {
            Model.shared.add(text)
        }
        
        textField.text = ""
        
        for _ in Model.shared.items {
            let joined = Model.shared.items.joined(separator: "\n")
            label.text = joined
        }
    }
    
    @IBAction func shoudReset(_ sender: Any) {
        Model.shared.reset()
        label.text = ""
    }
}

