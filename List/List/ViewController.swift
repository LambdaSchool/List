
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        Model.shared.add(text)
        textField.text = ""
        
        let joined = Model.shared.items.joined(separator: "\n")
        label.text = joined
    }
    @IBAction func shouldReset(_ sender: Any) {
        Model.shared.resetItems()
        let joined = Model.shared.items.joined(separator: "\n")
        label.text = joined
    }
    
    
}

