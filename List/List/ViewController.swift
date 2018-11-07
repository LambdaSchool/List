import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        if (!text.isEmpty) {
            Model.shared.add(text)
            let joined = Model.shared.items.joined(separator: "\n")
            textView.text = joined
            textField.text = ""
        }
    }
    
    
    @IBAction func shouldReset(_ sender: Any) {
        Model.shared.resetItems()
        textView.text = ""
    }
}
