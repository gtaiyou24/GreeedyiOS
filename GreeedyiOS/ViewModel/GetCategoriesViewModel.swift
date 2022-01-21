import Foundation


class GetCategoriesViewModel: ObservableObject {
    @Published var categories = [Category]()
    
    private let categoryAdapter = CategoryAdapter()
    static let shared = GetCategoriesViewModel()
    
    init() {
        self.categories = categoryAdapter.fetchCategories()
    }
    
    func subCategoriesOf(_ name: String) -> [Category]? {
        return Dictionary(grouping: self.categories, by: { $0.name })[name]
    }
}
