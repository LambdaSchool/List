import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    //    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func shouldAdd(_ sender: UITextField) {
        let text = textField.text ?? ""
        if !text.isEmpty {
        Model.shared.add("* \(text)")
        textField.text = ""
      }
        let joined = Model.shared.items.joined(separator: "\n")
        textView.text = joined
    }
        
    @IBAction func shouldReset(_ sender: UIButton) {
        Model.shared.resetItems()
        textView.text = ""
    }
    @IBAction func print(_ sender: UIButton) {
        Swift.print(Model.shared.items)
    }
}

