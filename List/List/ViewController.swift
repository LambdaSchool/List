import UIKit

class ViewController: UIViewController {
    @IBOutlet var textField: UITextField!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        
        if !text.isEmpty {
            
        }
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        resetItems()
        
        label.text = ""
    }
    

}

