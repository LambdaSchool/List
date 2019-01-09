import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func shouldAdd(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        ItemsController.shared.add(text)
        updateViews()
        textField.text = nil
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        ItemsController.shared.resetItems()
        label.text = nil
    }
    
    @IBAction func debugPrint(_ sender: Any) {
        print(ItemsController.shared.items)
    }
    
    
    private func updateViews() {
    let joined = ItemsController.shared.items.joined(separator: "\n")
    label.text = joined
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
}
