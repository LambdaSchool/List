
import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
    
    func add(_ item: String) {
        items.append(item)
        // add the item to your items list
    }
    
    func resetItems() {
        
       items = []
        // reset your items list here
    } 
    
}
