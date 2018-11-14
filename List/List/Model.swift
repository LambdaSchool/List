import UIKit

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
    
    func add(_ item: String) {
        // add the item to your items list
        let bulletPoint: String = "\u{2022}"
        items.append(bulletPoint + " " + item)
    }
    
    //Reset the items array
    func resetItems() {
        items = []
    }
    
    func printItems() {
        // print items to the debug console
    }
}
