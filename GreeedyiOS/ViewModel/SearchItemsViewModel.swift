import Foundation


class SearchItemsViewModel: ObservableObject {
    @Published var items = Items()
    
    private let itemAdapter = ItemAdapter()
    static let shared = SearchItemsViewModel()
    
    func fetchItems(query: SearchQuery) {
        self.items = self.itemAdapter.search()
    }
}

struct SearchQuery {
    var text: String
    
    init(_ text: String) {
        self.text = text
    }
}
