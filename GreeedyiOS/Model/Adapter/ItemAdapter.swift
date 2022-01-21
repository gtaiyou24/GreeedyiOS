import Foundation


class ItemAdapter {
    func search() -> Items {
        return Items(list: [
            Item(id: "1", name: "商品名", brandName: "17kg", price: 1749, images: ["https://www.dzimg.com/Dahong/202103/1066967_18676507_k3.jpg"], colors: [], description: "商品説明文商品説明文商品説明文商品説明文商品説明文商品説明文", url: "https://shopping.yahoo.co.jp"),
            Item(
                id: "2",
                name: "ワンサイドオープンショルダーニットトップス",
                brandName: "GRL",
                price: 999,
                images: [
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
            ),
            Item(
                id: "3",
                name: "[everynana] アンバランスヘム配色ニット・p318879",
                brandName: "DHOLIC",
                price: 5962,
                images: [
                    "https://www.dzimg.com/Dahong/202112/1269645_19719761_k3.gif",
                    "https://ebbda12.jpg3.kr/2021w/top/21limodqfwvkn/7.jpg",
                    "https://ebbda12.jpg3.kr/2021w/top/21limodqfwvkn/7-1.jpg"
                ],
                colors: [
                    ItemColor.black,
                    ItemColor.beige,
                    ItemColor.gray
                ],
                description: "商品のお色は、照明の関係で実物と多少の違いが生じることがございますので、ご了承ください。\n商品の仕様やサイズ、販売価格は予告なく変更する場合がありますのでご了承ください。\n選択可能なカラー・サイズのみご注文いただけます。",
                url: "https://www.dholic.co.jp/Nshopping/GoodView_Item.asp?Gserial=1269645"
            ),
            Item(
                id: "4",
                name: "[arima] ウール混リブスリムニット・p210033",
                brandName: "DHOLIC",
                price: 3586,
                images: [
                    "https://www.dzimg.com/Dahong/202101/1042013_18442888_k3.jpg",
                    "https://www.dzimg.com/PartnerMall/202101/1042013_info_20210119_103917_1.jpg"
                ],
                colors: [ItemColor.black],
                description: "商品のお色は、照明の関係で実物と多少の違いが生じることがございますので、ご了承ください。\n商品の仕様やサイズ、販売価格は予告なく変更する場合がありますのでご了承ください。\n選択可能なカラー・サイズのみご注文いただけます。",
                url: "https://www.dholic.co.jp/Nshopping/GoodView_Item.asp?Gserial=1042013"
            ),
            Item(
                id: "5",
                name: "[everynana] アンバランスヘム配色ニット・p318879",
                brandName: "DHOLIC",
                price: 5962,
                images: [
                    "https://www.dzimg.com/Dahong/202112/1269645_19719761_k3.gif",
                    "https://ebbda12.jpg3.kr/2021w/top/21limodqfwvkn/7.jpg",
                    "https://ebbda12.jpg3.kr/2021w/top/21limodqfwvkn/7-1.jpg"
                ],
                colors: [
                    ItemColor.black,
                    ItemColor.beige,
                    ItemColor.gray
                ],
                description: "商品のお色は、照明の関係で実物と多少の違いが生じることがございますので、ご了承ください。\n商品の仕様やサイズ、販売価格は予告なく変更する場合がありますのでご了承ください。\n選択可能なカラー・サイズのみご注文いただけます。",
                url: "https://www.dholic.co.jp/Nshopping/GoodView_Item.asp?Gserial=1269645"
            ),
            Item(
                id: "6",
                name: "[everynana] アンバランスヘム配色ニット・p318879",
                brandName: "DHOLIC",
                price: 5962,
                images: [
                    "https://www.dzimg.com/Dahong/202112/1269645_19719761_k3.gif",
                    "https://ebbda12.jpg3.kr/2021w/top/21limodqfwvkn/7.jpg",
                    "https://ebbda12.jpg3.kr/2021w/top/21limodqfwvkn/7-1.jpg"
                ],
                colors: [
                    ItemColor.black,
                    ItemColor.beige,
                    ItemColor.gray
                ],
                description: "商品のお色は、照明の関係で実物と多少の違いが生じることがございますので、ご了承ください。\n商品の仕様やサイズ、販売価格は予告なく変更する場合がありますのでご了承ください。\n選択可能なカラー・サイズのみご注文いただけます。",
                url: "https://www.dholic.co.jp/Nshopping/GoodView_Item.asp?Gserial=1269645"
            ),
        ])
    }
}
