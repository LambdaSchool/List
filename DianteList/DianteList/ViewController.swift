//
//  ViewController.swift
//  DianteList
//
//  Created by Diante Lewis-Jolley on 1/15/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!


    @IBAction func addButton(_ sender: Any) {
        guard let item = textField.text else { return }
        ItemController.shared.add(item)
    }


    @IBAction func resetButton(_ sender: Any) {
        
    }



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

