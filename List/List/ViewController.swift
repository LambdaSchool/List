//
//  ViewController.swift
//  List
//
//  Created by Dustin Koch on 1/8/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    let itemsController = ItemsController()
    var completeList: String = ""
    var listCount: Int = 0
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        let input = textField.text ?? ""
        
        if !input.isEmpty {
            completeList += "\(input)\n"
            label.text = completeList
            textField.text = ""
        }
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        itemsController.resetItems()
        label.text = ""
        completeList = ""
    }
    
    
    
    

}

