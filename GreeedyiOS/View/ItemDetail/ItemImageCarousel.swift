import SwiftUI

struct ItemImageCarousel: View {
    let viewModel: GetItemViewModel
    
    @State private var currentIndex = 0
    @GestureState private var dragOffset: CGFloat = 0
    
    var body: some View {
        GeometryReader { bodyView in
            HStack {
                ForEach(self.viewModel.item.images, id: \.self) { imageUrl in
                    AsyncImage(url: URL(string: imageUrl)) { image in
                        image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: bodyView.size.width)
                }
            }
            .offset(x: self.dragOffset)
            .offset(x: -CGFloat(self.currentIndex) * bodyView.size.width)
            .gesture(
                DragGesture()
                    .updating(self.$dragOffset, body: { (value, state, _) in
                        // 移動幅（width）のみ更新する
                        state = value.translation.width
                    })
                    .onEnded({ value in
                        var newIndex = self.currentIndex
                        // ドラッグ幅からページングを判定
                        // 今回は画面幅x0.3としているが、操作感に応じてカスタマイズする必要がある
                        if abs(value.translation.width) > bodyView.size.width * 0.3 {
                            newIndex = value.translation.width > 0 ? self.currentIndex - 1 : self.currentIndex + 1
                        }
                        
                        // 最小ページ、最大ページを超えないようチェック
                        if newIndex < 0 {
                            newIndex = 0
                        } else if newIndex > (self.viewModel.item.images.count - 1) {
                            newIndex = self.viewModel.item.images.count - 1
                        }
                        
                        self.currentIndex = newIndex
                    })
            )
        }
    }
}

struct ItemImageCarousel_Previews: PreviewProvider {
    static var item = Item(
        id: "1",
        name: "ワンサイドオープンショルダーニットトップス",
        brandName: "GRL",
        price: 3421,
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
        ItemImageCarousel(viewModel: GetItemViewModel(item))
    }
}
