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
    let text = textField.text ?? ""
    @IBOutlet weak var shouldReset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}


