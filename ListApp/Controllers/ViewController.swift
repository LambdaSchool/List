//
//  ViewController.swift
//  ListApp
//
//  Created by Nelson Gonzalez on 1/8/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
   
   
    var itemsController = ItemsController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
    }
    
    func updateViews(){
        label.text = nil
    }
    

    @IBAction func shouldAdd(_ sender: UIButton) {
        
        let text = textField.text ?? ""
       
        if !text.isEmpty {
            itemsController.add(text)
            textField.text = ""
        } else {
            print("No")
        }
        let joined = itemsController.items.joined(separator: "\n")
        label.text = joined
        
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        itemsController.resetItems()
        updateViews()
    }
    
    @IBAction func printButton(_ sender: UIButton) {
        
        print(itemsController.items)
    }
    
}

