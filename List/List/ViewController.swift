import UIKit

class ViewController: UIViewController {
    @IBOutlet var textField: UITextField!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        guard !text.isEmpty else { return }
        Model.shared.add("∙ \(text)")
        textField.text = ""
        let updatedLabel = Model.shared.items.joined(separator: "\n")
        label.text = updatedLabel
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        Model.shared.resetItems()
        label.text = ""
    }
    

}

