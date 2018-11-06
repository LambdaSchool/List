import Foundation
import UIKit

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
}

