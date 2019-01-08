//
//  ViewController.swift
//  petsList
//
//  Created by Mary Kajiwara on 1/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var shouldAdd: UIButton!
  
    @IBOutlet weak var shouldReset: UIButton!
    
    let itemsController = ItemsController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        let text = textField.text ?? ""
        if !text.isEmpty {
            itemsController.add(text)
            
        }
        let joined = itemsController.items.joined(separator: "\n")
        label.text = joined
    }
    
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        itemsController.resetItems()
        label.text = ""
    }
}



