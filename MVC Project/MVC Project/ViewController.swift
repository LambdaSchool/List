
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        if !text.isEmpty {
            textView.text = Model.shared.addItems(text).joined(separator: "\n")
            textField.text = ""
        }
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        textView.text = Model.shared.resetItems().joined(separator: "\n")
    }
    
    
    @IBAction func debug(_ sender: Any) {
        let text = textView.text ?? ""
        if !text.isEmpty {
            print(textView.text!)
            
        }
        }
    }
    
    
    
    
    


