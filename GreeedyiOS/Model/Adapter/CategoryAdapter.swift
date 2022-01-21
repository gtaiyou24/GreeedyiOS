import Foundation

class CategoryAdapter {
    func fetchCategories() -> [Category] {
        return [
            Category(name: "トップス", _imageUrl: "https://cdn.grail.bz/images/goods/d/mb1182/mb1182_v1.jpg", subCategories: [
                Category(name: "Tシャツ/カットソー", _imageUrl: "https://d13bk85vz164q6.cloudfront.net/snidel/ProductImages/0/SWCT214025_L.jpg"),
                Category(name: "シャツ/ブラウス", _imageUrl: "https://cdn.grail.bz/images/goods/d/at663/at663_v1.jpg"),
                Category(name: "ポロシャツ", _imageUrl: "https://cdn.grail.bz/images/goods/d/al38/al38_v1.jpg"),
                Category(name: "ニット/セーター", _imageUrl: "https://cdn.grail.bz/images/goods/d/al38/al38_v1.jpg"),
            ]),
            Category(name: "ジャケット", _imageUrl: "https://www.dzimg.com/Dahong/202109/1200225_19202545_k3.gif", subCategories: [
                Category(name: "テーラード", _imageUrl: "https://www.dzimg.com/Dahong/202109/1200225_19202545_k3.gif"),
                Category(name: "ノーカラー", _imageUrl: "https://sc3.locondo.jp/contents/commodity_image/PR/PR5779EW13432_1_m.jpg"),
                Category(name: "デニム", _imageUrl: "https://sc3.locondo.jp/contents/commodity_image/LA/LA7790EW03977_1_m.jpg"),
                Category(name: "ライダース", _imageUrl: "https://sc3.locondo.jp/contents/commodity_image/DU/DU649EW18371_1_m.jpg"),
                Category(name: "ミリタリー", _imageUrl: "https://cdn.grail.bz/images/goods/d/al38/al38_v1.jpg"),
                Category(name: "MA1", _imageUrl: "https://cdn.grail.bz/images/goods/d/al38/al38_v1.jpg"),
                Category(name: "ダウン", _imageUrl: "https://cdn.grail.bz/images/goods/d/al38/al38_v1.jpg"),
            ]),
            Category(name: "アウター", _imageUrl: "https://cdn.grail.bz/images/goods/d/mb1182/mb1182_v1.jpg", subCategories: [
                Category(name: "ダッフルコート", _imageUrl: "https://d13bk85vz164q6.cloudfront.net/snidel/ProductImages/0/SWCT214025_L.jpg"),
                Category(name: "シャツ/ブラウス", _imageUrl: "https://cdn.grail.bz/images/goods/d/at663/at663_v1.jpg"),
                Category(name: "ポロシャツ", _imageUrl: "https://cdn.grail.bz/images/goods/d/al38/al38_v1.jpg"),
                Category(name: "ニット/セーター", _imageUrl: "https://cdn.grail.bz/images/goods/d/al38/al38_v1.jpg"),
            ]),
            Category(name: "スカート", _imageUrl: "https://cdn.grail.bz/images/goods/d/mb1182/mb1182_v1.jpg", subCategories: [
                Category(name: "Tシャツ/カットソー", _imageUrl: "https://d13bk85vz164q6.cloudfront.net/snidel/ProductImages/0/SWCT214025_L.jpg"),
                Category(name: "シャツ/ブラウス", _imageUrl: "https://cdn.grail.bz/images/goods/d/at663/at663_v1.jpg"),
                Category(name: "ポロシャツ", _imageUrl: "https://cdn.grail.bz/images/goods/d/al38/al38_v1.jpg"),
                Category(name: "ニット/セーター", _imageUrl: "https://cdn.grail.bz/images/goods/d/al38/al38_v1.jpg"),
            ]),
            Category(name: "ワンピース", _imageUrl: "https://cdn.grail.bz/images/goods/d/mb1182/mb1182_v1.jpg", subCategories: [
                Category(name: "Tシャツ/カットソー", _imageUrl: "https://d13bk85vz164q6.cloudfront.net/snidel/ProductImages/0/SWCT214025_L.jpg"),
                Category(name: "シャツ/ブラウス", _imageUrl: "https://cdn.grail.bz/images/goods/d/at663/at663_v1.jpg"),
                Category(name: "ポロシャツ", _imageUrl: "https://cdn.grail.bz/images/goods/d/al38/al38_v1.jpg"),
                Category(name: "ニット/セーター", _imageUrl: "https://cdn.grail.bz/images/goods/d/al38/al38_v1.jpg"),
            ]),
        ]
    }
}
