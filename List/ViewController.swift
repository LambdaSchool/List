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
    @IBOutlet weak var textView: UITextView!
    //var joined = ""
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        let bullet = " \u{F8FF} "
        if !text.isEmpty {
            Model.shared.add(bullet + text)
        }
        
        textField.text = ""
        
        for _ in Model.shared.items {
            let joined = Model.shared.items.joined(separator: "\n")
            textView.text = joined
        }
    }
    
    @IBAction func shoudReset(_ sender: Any) {
        Model.shared.reset()
        textView.text = ""
    }
    

    @IBAction func printConsole(_ sender: Any) {
        print(Model.shared.items)
    }
}

