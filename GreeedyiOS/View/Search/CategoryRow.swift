import SwiftUI

struct CategoryRow: View {
    let viewModel: GetSubCategoriesViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.viewModel.category.name)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
                .foregroundColor(Color("Headline"))

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(alignment: .top, spacing: 0) {
                    ForEach(self.viewModel.category.subCategories!) { subCategory in
                        NavigationLink(destination: SearchItemsView(text: subCategory.name)) {
                            Collection(label: subCategory.name, backgroundImageUrl: subCategory.imageUrl)
                                .padding(.leading, 15)
                        }
                    }
                }
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(viewModel: GetSubCategoriesViewModel(
            Category(name: "トップス", _imageUrl: "https://cdn.grail.bz/images/goods/d/mb1182/mb1182_v1.jpg", subCategories: [
                Category(name: "Tシャツ/カットソー", _imageUrl: "https://d13bk85vz164q6.cloudfront.net/snidel/ProductImages/0/SWCT214025_L.jpg"),
                Category(name: "シャツ/ブラウス", _imageUrl: "https://cdn.grail.bz/images/goods/d/at663/at663_v1.jpg"),
                Category(name: "ポロシャツ", _imageUrl: "https://cdn.grail.bz/images/goods/d/al38/al38_v1.jpg"),
                Category(name: "ニット/セーター", _imageUrl: "https://cdn.grail.bz/images/goods/d/al38/al38_v1.jpg"),
            ])
        ))
    }
}
