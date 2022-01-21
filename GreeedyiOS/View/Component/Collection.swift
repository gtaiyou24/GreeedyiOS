import SwiftUI
import UIKit
import Foundation

struct Collection: View {
    var label: String
    var backgroundImageUrl: URL?
    
    private let width: CGFloat = 150
    private let height: CGFloat = 200
    
    var body: some View {
        AsyncImage(url: self.backgroundImageUrl) { image in
            image
                .resizable()
                .scaledToFit()
                .clipped()  // はみ出した箇所を切り取り
                .cornerRadius(5)  // 丸みをつける
                .brightness(-0.2)  // 明るさを調整
        } placeholder: {
            ProgressView()
                .frame(width: self.width, height: self.height)
                .background(Color.randomColor)
                .cornerRadius(5)
        }
        .frame(width: self.width, height: self.height)
        .overlay(
            Text(label)
                .foregroundColor(.white)
                .font(.subheadline)
                .bold()
                .padding(.top, 10),
            alignment: .top
        )
    }
}

struct Collection_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Collection(label: "トップス", backgroundImageUrl: URL(string: "https://www.dzimg.com/Dahong/202109/1201860_19241132_k3.jpg"))
        }
    }
}
