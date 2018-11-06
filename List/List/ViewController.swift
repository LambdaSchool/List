import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        guard !text.isEmpty else {
            textField.text = ""
            return
        }
            let joined = Model.shared.items.joined(separator: "\n")
            textField.text = joined
        }
    @IBAction func shouldReset(_ sender: Any) {
        textField.text = Model.resetItems().items
        label.text = ""
        }
    }


