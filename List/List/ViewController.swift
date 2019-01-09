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
        
        eraseLabel()
        
    }
    
    func eraseLabel() {
        label.text = nil
    }
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        
        var text = textField.text ?? ""
        
        if !text.isEmpty {
            
            if text.last != "." {
                text.append(".")
            }
            
            textField.text = nil
            
            itemsController.add(text)
            let joined = itemsController.items.joined(separator: "\n")
            label.text = joined
            
        }
        
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        
        itemsController.resetItems()
        eraseLabel()
        
    }
    
    @IBAction func printList(_ sender: UIButton) {
        
        if itemsController.items.isEmpty {
            print("The items are empty")
        } else {
            print("The items are \(itemsController.items)")
        }
        
    }
    
    
}

