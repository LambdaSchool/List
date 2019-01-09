import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
    
    func addItem(item: String) {
        items.append(item)
     }
    
    func resetItems() {
        items.removeAll()
    }
}

