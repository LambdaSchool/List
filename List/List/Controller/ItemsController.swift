import Foundation

class ItemsController {
    var items: [String] = []
    
    func add(_ item: String) {
        items.append(item)
    }
    
    func resetItems() {
        items.removeAll()
    }
}
