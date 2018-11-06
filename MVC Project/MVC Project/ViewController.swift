
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        if !text.isEmpty {
            label.text = Model.shared.addItems(text).joined(separator: "\n")
            textField.text = ""
        }
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        label.text = Model.shared.resetItems().joined(separator: "\n")
    }
    
    
    @IBAction func debug(_ sender: Any) {
        let text = label.text ?? ""
        if !text.isEmpty {
            print(label.text!)
            
        }
        }
    }
    
    
    
    
    


