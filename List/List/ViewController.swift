import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
//    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        if !text.isEmpty {
            Model.shared.add(text)
            textField.text = ""
        }
        let joined = Model.shared.items.joined(separator: "\n")
//        label.text = joined
        textView.text = joined
        }
    @IBAction func shouldReset(_ sender: Any) {
        Model.shared.resetItems()
//        label.text = ""
        textView.text = ""
        }
    @IBAction func printToConsole(_ sender: Any) {
        let text = textField.text ?? ""
        if !text.isEmpty {
            Model.shared.add(text)
            textField.text = ""
        }
        let joined = Model.shared.items.joined(separator: "\n")
        print(joined)
    }
}



