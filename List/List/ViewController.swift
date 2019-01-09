//
//  ViewController.swift
//  List
//
//  Created by Luis Corvalan on 1/8/19.
//  Copyright © 2019 Luis Corvalan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    var itemsController = ItemsController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = nil
        
    }
    
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        
        let text = textField.text ?? ""
        
        if !text.isEmpty {
            itemsController.items.append(text)
            textField.text = nil
            
            let joined = itemsController.items.joined(separator: "\n")
            
        }
        
        
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        
        itemsController.resetItems()
        label.text = nil
        
    }
    
    
    
}

