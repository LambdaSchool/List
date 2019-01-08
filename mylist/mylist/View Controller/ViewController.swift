//
//  ViewController.swift
//  mylist
//
//  Created by Michael Flowers on 1/8/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var itemController = ItemController()

    @IBOutlet weak var itemTextField: UITextField!
    @IBOutlet weak var listTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listTextView.text = nil
    }

    @IBAction func addItem(_ sender: UIButton) {
        guard let text = itemTextField.text, !text.isEmpty else { return }
        itemController.items.insert(text, at: 0)
        
        listTextView.text = itemController.items.first
    }
    
    @IBAction func resetList(_ sender: UIButton) {
    }
    
}

