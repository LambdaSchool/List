//
//  ViewController.swift
//  List
//
//  Created by Nathanael Youngren on 1/8/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        resetItems()
    }
    
    func add(_ item: String) {
        itemsController.items.append(item)
        let joined = itemsController.items.joined(separator: "\n")
        label.text = joined
    }
    
    func resetItems() {
        label.text = ""
    }
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        let text = textField.text ?? ""
        if !text.isEmpty {
            add(text)
        }
        textField.text = ""
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        resetItems()
    }
    
    let itemsController = ItemsController()
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
}

