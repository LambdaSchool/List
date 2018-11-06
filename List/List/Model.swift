import UIKit

class Model {
    static let shared = Model()
    private init() {}
    private(set) var items: [String] = []
    
    func add(_ item: String) {
        // add the item to your items list
        items.append(item)
    }
    func resetItems() {
        items.removeAll()
        // reset your items list here
    }
}
