//
//  ViewController.swift
//  ListProject
//
//  Created by Cameron Dunn on 1/8/19.
//  Copyright © 2019 Cameron Dunn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    let itemsController = ItemsController()
    @IBAction func printButton(_ sender: Any) {
         let joined = itemsController.items.joined(separator: "\n")
        print(joined)
    }
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        textField.text = ""
        add("•\(text)")
        let joined = itemsController.items.joined(separator: "\n")
        label.text = joined
    }
    @IBAction func shouldReset(_ sender: Any) {
        resetItems()
        label.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func add(_ item: String) {
        if(!item.isEmpty){
            itemsController.items.append(item)
        }else{
            let alert = UIAlertController(title: "Error", message: "New item field cannot be empty.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Continue", style: .default))
            self.present(alert, animated:  true)
        }
    }
    func resetItems() {
        itemsController.items.removeAll()
        textField.text = ""
    }

}

