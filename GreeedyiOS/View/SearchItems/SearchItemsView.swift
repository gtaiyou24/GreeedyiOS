//
//  SearchItemsView.swift
//  GreeedyiOS
//
//  Created by 田村大耀 on 2022/01/21.
//

import SwiftUI

struct SearchItemsView: View {
    private static let gridItem = GridItem(.flexible(), spacing: 5)
    private let columns: [GridItem] = Array(repeating: gridItem, count: 3)
    private let navigationBarColor = UIColor(Color("Background"))
    
    @State var text: String
    @ObservedObject var viewModel = SearchItemsViewModel.shared
    @Environment(\.dismiss) var dismiss

//    init() {
//        // ナビゲーションバーの色を指定
//        UINavigationBar.appearance().barTintColor = navigationBarColor
//    }
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: self.columns, spacing: 5) {
                    ForEach(self.viewModel.items.list) { item in
                        NavigationLink(destination: ItemDetailView(viewModel: GetItemViewModel(item))) {
                            ItemCard(viewModel: GetItemViewModel(item))
                        }
                    }
                }
                .padding(.top)
            }
            .frame(idealWidth: .infinity, maxWidth: .infinity)
            .background(Color("Background"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .onAppear {
                self.viewModel.fetchItems(query: SearchQuery(self.text))
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {dismiss()}) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color("ButtonText"))
                    }
                }
                ToolbarItem(placement: .principal) {
                    SearchBar(text: self.$text)
                }
            }
            
            FilterButton()
        }
    }
}

struct SearchItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SearchItemsView(text: "トップス")
        }
    }
}
