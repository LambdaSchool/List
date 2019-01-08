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
    @IBOutlet weak var itemLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemLabel.text = nil
    }

    @IBAction func addItem(_ sender: UIButton) {
        guard let text = itemTextField.text, !text.isEmpty else { return }
        itemController.add("* \(text)")
        
        let joined = itemController.items.joined(separator: "\n")
        itemLabel.text = "\(joined)"
        
        itemTextField.text = nil
    }
    
    @IBAction func resetList(_ sender: UIButton) {
        itemController.resetItems()
        itemLabel.text = nil
        itemTextField.text = nil
    }
    
    @IBAction func shouldPrint(_ sender: UIButton) {
        print("\(itemController.items)")
    }
    
}

