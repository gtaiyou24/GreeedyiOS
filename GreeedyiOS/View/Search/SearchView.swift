import SwiftUI

struct SearchView: View {
    @State var isSuggestionPresented = false
    @ObservedObject var viewModel = GetCategoriesViewModel.shared
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(showsIndicators: false) {
                    VStack {
                        Header(isSuggestionPresented: self.$isSuggestionPresented)

                        LazyVStack(alignment: .leading) {
                            ForEach(self.viewModel.categories) { category in
                                CategoryRow(viewModel: GetSubCategoriesViewModel(category))
                            }
                        }
                    }
                }
                .navigationBarHidden(true)  // ナビゲーションバーを非表示
                
                if self.isSuggestionPresented {
                    SuggestKeywordView(isSuggestionPresented: self.$isSuggestionPresented)
                }
            }
            .background(Color("Background"))
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
