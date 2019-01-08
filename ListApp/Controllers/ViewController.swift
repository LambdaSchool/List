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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = nil
       
    }
    
    func add(_ item: String) {
        // add the item to your items list
    }
    
    func resetItems() {
        // reset your items list here
    } 

    @IBAction func shouldAdd(_ sender: UIButton) {
        
        
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        resetItems()
        label.text = ""
    }
    
    
}

