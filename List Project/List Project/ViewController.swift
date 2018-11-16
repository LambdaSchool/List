import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        guard !text.isEmpty else { return }
        Model.shared.add("• \(text)")
        textField.text = ""
        let updatedLabel = Model.shared.items.joined(separator: "\n") // a way of converting an array to strings...I could replace "\n" which is a new line, with ", " and then everything would print on one line with a comma and a space inbetween.
        label.text = updatedLabel
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        Model.shared.resetItems()
        label.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
}

