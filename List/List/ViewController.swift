
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func shouldAdd(_ sender: Any) {
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        resetItems()
    }
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
}

