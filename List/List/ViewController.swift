
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func shouldAdd(_ sender: Any) {
        //if something is entered into the textField, assign it to text. Otherwise assign nothing to text.
        let text = textField.text ?? ""
        
        if !text.isEmpty { // if text is not empty...
            // add text to the model
            Model.shared.add(text)
            
            // clear the textField after each submission
            textField.text = ""
        }
        // convert model's list to a string
        let joined = Model.shared.items.joined(separator: "\n")
        
        // Set the label text to joined string
        label.text = joined
    }
    
    @IBAction func shouldReset(_ sender: Any) { // when "reset" button is tapped
         // ... call the resetItems function (Access through the property in the class), which will clear it
        Model.shared.resetItems()
        
        // Set the label text to nothing
        label.text = ""
    }
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
}

