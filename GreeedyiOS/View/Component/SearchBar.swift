import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    var placeholder: String = "検索"

    var body: some View {
        TextField(self.placeholder, text: self.$text)
            .padding(.vertical, 8)
            .padding(.horizontal, 48)
            .background(.white)
            .cornerRadius(8)
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 16)
                    
                    if !self.text.isEmpty {
                        Button(action: {
                            self.text = ""
                            // キーボードを閉じる
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        }, label: {
                            Image(systemName: "xmark")
                                .foregroundColor(.black)
                                .padding(.trailing, 16)
                        })
                    }
                }
            )
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("Background").edgesIgnoringSafeArea(.all)

            VStack(spacing: 10) {
                SearchBar(text: .constant("キーワード"))
                SearchBar(text: .constant(""))
                SearchBar(text: .constant("キーワード"))
            }
        }
    }
}
