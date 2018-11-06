import UIKit

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
    
    func add(_ item: String) {
        items.append(item)
    }
    
    func resetItems() {
        items = []
    }
    
}

print(Model.shared.items)

Model.shared.add("Yo")

print(Model.shared.items)
