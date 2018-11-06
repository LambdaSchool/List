import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
    
    func addItems(_ item: String) -> [String] {
        items += ["•" + item]
        return items
    }
    func  resetItems() -> [String]{
        items.removeAll()
        return items
    }
}
