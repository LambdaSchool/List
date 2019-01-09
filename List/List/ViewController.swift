import UIKit

class ViewController: UIViewController {
    @IBOutlet var textField: UITextField!
    @IBOutlet var textView: UITextView!
    
    let updatedTextView = Model.shared.items.joined(separator: "\n")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        guard !text.isEmpty else { return }
        Model.shared.add("∙ \(text)")
        textField.text = ""
        let updatedTextView = Model.shared.items.joined(separator: "\n")
        textView.text = updatedTextView
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        Model.shared.resetItems()
        textView.text = ""
    }
    
    @IBAction func printList(_ sender: Any) {
        print(Model.shared.items)
    }
    

}

