import Foundation

class ItemsController {
    var items: [String] = []
    
    func add(_ item: String) {
        return items.append(item)
    }
    
    func resetItems() {
        // reset your items list here
       return items.reset
    }
}


