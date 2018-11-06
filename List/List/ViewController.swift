import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        if (!text.isEmpty) {
            
        }
    }
    
    
    @IBAction func shouldReset(_ sender: Any) {
    }
}
