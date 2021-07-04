import Foundation

class Model {
    
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
    
    func create(_ item: String){
        items.append(item)
    }
    
    func reset() {
        items.removeAll()
    }
}
