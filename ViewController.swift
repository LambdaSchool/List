//
//  ViewController.swift
//  List
//
//  Created by Angel Buenrostro on 1/8/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        if !text.isEmpty {
            Model.shared.add(text)
            textField.text = ""
            let joined = Model.shared.items.joined(separator: "\n")
            label.text = joined
        }
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        Model.shared.resetItems()
        label.text = ""
    }
    
    @IBAction func shouldPrint(_ sender: Any) {
        print(Model.shared.items.joined(separator: ", "))
    }
}

