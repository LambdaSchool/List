//
//  ViewController.swift
//  List
//
//  Created by Jocelyn Stuart on 1/8/19.
//  Copyright © 2019 JS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    let itemsController = ItemsController()

    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        let text = textField.text ?? ""
        
        
        if !text.isEmpty {
            itemsController.items.append(text)
            textField.text = ""
            let joined = itemsController.items.joined(separator: "\n")
            label.text = joined
        }
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        itemsController.resetItems()
        label.text = ""
    }
    
    @IBAction func shouldPrint(_ sender: UIButton) {
        print(itemsController.items.joined(separator: "\n"))
        
        // or print(itemsController.items) if you want in list type
    }
    
    
}

