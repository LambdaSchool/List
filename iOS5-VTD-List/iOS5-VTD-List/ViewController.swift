//
//  ViewController.swift
//  iOS5-VTD-List
//
//  Created by Vijay Das on 1/8/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        let text = textfield.text ?? ""
        if !text.isEmpty {
            Model.shared.addItem(" * \(text)")
            textfield.text = ""
            }
        let joined = Model.shared.items.joined(separator: "\n")
        label.text = joined
        
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        Model.shared.resetItems()
        textfield.text = ""
        label.text = ""
        
    }
    
    @IBAction func shouldPrintToConsole(_ sender: UIButton) {
        print(Model.shared.items)
        
    }
    
    
}

