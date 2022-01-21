import SwiftUI

struct ItemDetailView: View {
    let viewModel: GetItemViewModel

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            ItemImageCarousel(viewModel: self.viewModel)
                .frame(height: 500)
            
            VStack(alignment: .leading, spacing: 10) {
                Label(self.viewModel.item.brandName, systemImage: "tag")
                    .font(.title2)
                    .foregroundColor(Color("ButtonText"))
                
                Text(self.viewModel.item.name)
                    .foregroundColor(Color("ButtonText"))

                Text("¥\(self.viewModel.item.price)")
                    .font(.largeTitle)
                    .foregroundColor(Color("ButtonText"))
                
                Divider()
                
                Text(self.viewModel.item.description)
                    .font(.caption)
                    .foregroundColor(Color("Paragraph"))
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .padding(.leading, 20)
        }
        .background(Color("Background"))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {dismiss()}) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color("ButtonText"))
                }
            }
            ToolbarItem(placement: .bottomBar) {
                NavigationLink(destination: WebPageView(url: self.viewModel.item.url)) {
                    HStack {
                        Image(systemName: "cart")
                        Text("購入する")
                    }
                    .frame(width: UIScreen.main.bounds.size.width * 6.0 / 8, height: 50)
                    .background(Color("Button"))
                    .foregroundColor(Color("ButtonText"))
                    .cornerRadius(20)
                    .padding(.top, 20)
                }
            }
        }
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var item = Item(
        id: "1",
        name: "ワンサイドオープンショルダーニットトップス",
        brandName: "GRL",
        price: 999,
        images: [
            "https://www.dzimg.com/Dahong/202110/1230664_19450999_k3.jpg",
            "https://cdn.grail.bz/images/goods/d/mb870/mb870_u.jpg",
            "https://cdn.grail.bz/images/goods/d/mb870/mb870_col_561.jpg"
        ],
        colors: [
            ItemColor.black,
            ItemColor.beige,
            ItemColor.brown,
        ],
        description: "トレンドライクなアシンメトリーデザインのショルダーカットニットトップス。\nヘルシーな肌見せを叶え、大人っぽさをプラスする。ゆったりとしたシルエットがこなれた着こなしをアシストする。\n合わせるボトムによって、カジュアルにも綺麗めにも着こなせる優秀アイテム。\n\n★伸縮性があります。\n★素材の特性上、カラー・形・サイズが、写真・サイズ表示と多少異なる場合があります。",
        url: "https://www.grail.bz/disp/item/mb870/"
    )

    static var previews: some View {
        NavigationView {
            ItemDetailView(viewModel: GetItemViewModel(item))
        }
    }
}
