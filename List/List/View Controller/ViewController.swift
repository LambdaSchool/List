import UIKit

class ViewController: UIViewController {
    @IBOutlet var textField: UITextField!
    @IBOutlet var textView: UITextView!
    
    let itemsController = ItemsController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func shouldAdd(_ sender: Any) {
        let text = textField.text ?? ""
        guard !text.isEmpty else { return }
        itemsController.add("∙ \(text)")
        textField.text = ""
        let updatedTextView = itemsController.items.joined(separator: "\n")
        textView.text = updatedTextView
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        itemsController.resetItems()
        textView.text = ""
    }
    
    @IBAction func printList(_ sender: Any) {
        if itemsController.items.isEmpty {
            print("There are no items")
        } else {
            print(itemsController.items)
        }
        
    }
    

}

