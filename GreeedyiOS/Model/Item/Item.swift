struct Item: Hashable, Identifiable {
    var id: String
    var name: String
    var brandName: String
    var price: Int
    var images: [String]
    var colors: [ItemColor]
    var description: String
    var url: String
}
