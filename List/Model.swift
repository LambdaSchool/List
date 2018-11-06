import UIKit

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
    
    func add(_ item: String) {
        self.items.append(item)
    }
    
    func reset() {
        self.items.removeAll(keepingCapacity: false)
    }

}
