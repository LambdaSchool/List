//
//  ViewController.swift
//  List - List added to Label MBP
//


import UIKit

class ViewController: UIViewController {

    @IBAction func shouldAdd(_ sender: Any) {
        // nil-coalescing unwraps an optional and returns the value if not nil or the default value if nil
        let text = textField.text ?? ""
        
        if !text.isEmpty { // if text is not empty...
            // add text to the model
            Model.shared.add(text)
            
            // remove the text from the textField after it has been added to the label
            textField.text = ""
        }
       
        // convert model's list to a string using a newline
        let joined = Model.shared.items.joined(separator: "\n")
        
        // set the label to the joined string
        label.text = joined
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        // implement shouldReset
        Model.shared.resetItems()
        label.text = ""
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
}

