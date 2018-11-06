import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
 
    @IBAction func shouldAdd(_ sender: Any) {
        if let text = textField.text, !text.isEmpty {
            let entry = Model()
            Model.shared.items.append()
    }
    
    !text.isEmpty
    
    @IBAction func shouldReset(_ sender: Any) {
        resetItems()
        
        label.text = ""
    }
    
    let joined = Model.shared.items.joined(separator: "\n")
    }
}
