class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
    
    func add(_ item: String) {
        // add the item to your items list
        let bulletPoint: String = "\u{2022}"
        items.append(bulletPoint + " " + item)
        print(items)
    }
    
    func resetItems() {
        // reset your items list here
        items = []
    }
}
