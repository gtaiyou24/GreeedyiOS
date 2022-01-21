import SwiftUI

struct ItemCard: View {
    let viewModel: GetItemViewModel
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: self.viewModel.item.images[0])) { image in
                image
                    .resizable()
                    .scaledToFit()  // 縦横比を維持しながらフレームに収める
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(self.viewModel.item.brandName)
                    .foregroundColor(Color("CardParagraph"))
                
                Text("¥\(self.viewModel.item.price)")
                    .foregroundColor(Color("CardHeadline"))
                    .font(.headline)
            }
            .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 5)
        }
        .padding(.bottom, 10)
        .background(Color("CardBackground"))
        .cornerRadius(5)
    }
}

struct ItemCard_Previews: PreviewProvider {
    static var item = Item(
        id: "1",
        name: "ワンサイドオープンショルダーニットトップス",
        brandName: "GRL",
        price: 3421,
        images: [
            "https://www.dzimg.com/Dahong/202110/1230664_19450999_k3.jpg",
            "https://cdn.grail.bz/images/goods/d/mb870/mb870_u.jpg",
            "https://cdn.grail.bz/images/goods/d/mb870/mb870_col_40.jpg",
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
        ZStack {
            Color("Background").edgesIgnoringSafeArea(.all)

            ItemCard(viewModel: GetItemViewModel(item))
        }
    }
}
