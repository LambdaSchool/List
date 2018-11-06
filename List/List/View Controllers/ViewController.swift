import UIKit

class ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    private func updateViews() {
        let joined = Model.shared.items.joined(separator: "\n")
        listTextView.text = joined
    }
    
    @IBOutlet weak var itemTextField: UITextField!
    @IBOutlet weak var listTextView: UITextView!
    
    @IBAction func addItem(_ sender: Any) {
        let text = itemTextField.text ?? ""
        
        if !text.isEmpty {
            Model.shared.create(text)
        }
        itemTextField.text = ""
        updateViews()
    }
    
    @IBAction func resetList(_ sender: Any) {
        Model.shared.reset()
        listTextView.text = ""

    }
    @IBAction func printList(_ sender: Any) {
        print(Model.shared.items)
        print(Model.shared.items.count)
    }
}

