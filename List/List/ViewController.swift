//
//  ViewController.swift
//  List
//
//  Created by Stuart on 1/8/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func shouldAdd(_ sender: Any) {
        guard let text = textField?.text, !text.isEmpty else { return }
        ItemsController.shared.add(text)
        updateViews()
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        ItemsController.shared.resetItems()
        updateViews()
    }
    
    func updateViews() {
        label.text = ItemsController.shared.items.joined(separator: "\n")
    }
    
//    let itemsController = ItemsController()
}

