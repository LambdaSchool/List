//
//  ViewController.swift
//  ItemList
//
//  Created by Diante Lewis-Jolley on 1/8/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit


class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func resetButtonTapped(_ sender: Any) {
        itemsController.resetItems()
    }


    @IBAction func addButtonTapped(_ sender: Any) {
        var text = textField.text ?? ""
        if !text.isEmpty {
            itemsController.add(text)
        }
        label.text = textField.text
        text = " "
    }


    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    let itemsController = ItemsController()


}

