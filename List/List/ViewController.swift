
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var list: UITextView!
    @IBOutlet weak var printToConsoleButton: UIButton!
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        Model.shared.add(text)
        textField.text = ""
        
        let joined = Model.shared.items.joined(separator: "\n\u{2022} ")
        list.text = "\n\u{2022} " + joined
        
        let itemCount = Model.shared.items.count
        for state: UIControl.State in [.normal, .highlighted, .disabled, .selected, .focused, .application, .reserved] {
            printToConsoleButton.setTitle(NSLocalizedString("Print " + String(itemCount) + " item(s) to Console", comment: ""), for: state)
        }
        
    }
    @IBAction func shouldReset(_ sender: Any) {
        Model.shared.resetItems()
        let joined = Model.shared.items.joined(separator: "\n")
        list.text = joined
        for state: UIControl.State in [.normal] {
            printToConsoleButton.setTitle(NSLocalizedString("Print to Console", comment: ""), for: state)
        }
    }
    
    @IBAction func shouldPrint(_ sender: Any) {
    
        let joined = Model.shared.items.joined(separator: "\n\u{2022} ")
        print("\u{2022} " + joined)
        
    }
    
}

