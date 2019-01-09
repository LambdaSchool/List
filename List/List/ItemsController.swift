import Foundation

class ItemsController {
    static let shared = ItemsController()
    private init() {}
    var items: [String] = []
    
    func add(_ item: String) {
        items.append(item)
    }
    
    func resetItems() {
        // reset your items list here
       return items.removeAll()
    }
}


