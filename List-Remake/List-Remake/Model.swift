import Foundation

class Model {
    static let shared = Model()
    private init () {}
    
    private(set) var items: [String] = []
    
    func add(_ item: String) {
     //   item.append(text)
    }
    
    func resetItems() {
        // reset list here
    }
}
