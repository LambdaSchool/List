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
        itemsController.resetItems()
    }
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        let text = textField.text ?? ""
        if !text.isEmpty {
            itemsController.add("\u{2022} \(text)")
        }
        textView.text = itemsController.items.joined(separator: "\n")
        textField.text = ""
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        itemsController.resetItems()
        textView.text = ""
    }
    
    @IBAction func shouldPrintList(_ sender: UIButton) {
        print(itemsController.items.joined(separator: "\n"))
    }
    
    let itemsController = ItemsController()
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
}
