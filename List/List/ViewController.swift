import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        let text = textField.text ?? ""
        if !text.isEmpty {
            Model.shared.add("\u{2022} \(text)")
            textField.text = ""
            let joined = Model.shared.items.joined(separator: "\n")
            textView.text = joined
        }
    }
    
    
    @IBAction func shouldReset(_ sender: UIButton) {
        Model.shared.resetItems()
        textView.text = ""
    }
    
    
    @IBAction func shouldDebug(_ sender: UIButton) {
        let debugList = Model.shared.items.joined(separator: "\n")
        print(debugList)
    }
    
}

