
import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var label: UILabel!
    
    
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        
        let text = textField.text ?? ""
        if !text.isEmpty {
           Model.shared.add(text)
        }
        textField.text = ""
        
        for _ in Model.shared.items {
            
              let joined = Model.shared.items.joined(separator: "\n")
            label.text = joined
        }
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        Model.shared.resetItems()
         label.text = ""
    }
    
    
}
