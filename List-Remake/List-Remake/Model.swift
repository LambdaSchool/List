import Foundation

class Model {
    static let shared = Model()
    private init () {}
    
    private(set) var items: [String] = []
}
