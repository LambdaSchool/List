import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
}

func add(_ item: String) {
    // add items to list
    Model.shared.items
}

func resetItems() {
   // remove.Model.shared.items[index]
}
