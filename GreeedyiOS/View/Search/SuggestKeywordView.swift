import SwiftUI

struct SuggestKeywordView: View {
    @Binding var isSuggestionPresented: Bool
    @State var onSubmit = false
    @State var text = ""
    @FocusState var isForcused: Bool

    var body: some View {
        VStack {
            HStack {
                SearchBar(text: self.$text)
                    .padding(.leading, 10)
                    .focused($isForcused)
                    .onAppear {
                        self.isForcused = true
                    }
                    .onSubmit {
                        self.onSubmit = true
                    }

                Button(action: {self.isSuggestionPresented = false}) {
                    Text("キャンセル")
                        .foregroundColor(Color("ButtonText"))
                        .padding(.horizontal, 5)
                }
            }
            
            Text("ほしい服を見つけよう")
                .font(.headline)
                .foregroundColor(Color("Headline"))
                .bold()
                .padding(.top, 200)

            Text("アイテムの名前、ブランド名、カテゴリなどから検索できます。")
                .font(.caption)
                .padding()
                .foregroundColor(Color("Paragraph"))
            
            Spacer()

        }
        .background(Color("Background"))
        .navigationBarHidden(true)
        
        NavigationLink(destination: SearchItemsView(text: self.text), isActive: $onSubmit) {
            EmptyView()
        }
    }
}

struct SuggestKeywordView_Previews: PreviewProvider {
    @State static var isSuggestionPresented = false
    
    static var previews: some View {
        SuggestKeywordView(isSuggestionPresented: $isSuggestionPresented)
    }
}
