import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
        
    @IBAction func shouldAdd(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        Model.shared.add(text)
        updateViews()
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        Model.shared.resetItems()
        label.text = ""
        
    }
    private func updateViews() {
     let joined = Model.shared.items.joined(separator: "\n")
    label.text = joined
    }
    
    @IBAction func shouldPrint(_ sender: Any) {
        print(Model.shared.items)
    }
    
    
}



