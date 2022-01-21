import SwiftUI

struct Header: View {
    @Binding var isSuggestionPresented: Bool

    var body: some View {
        VStack(spacing: 10) {
            Text("Greeedy")
                .foregroundColor(.white)
                .font(.largeTitle)
                .bold()
            
            Text("国内全てのファッションアイテムを検索")
                .foregroundColor(.white)
                .font(.caption)
                .bold()

            Button(action: {self.isSuggestionPresented.toggle()}) {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    Text("アイテム名、服の特徴、ブランド名など")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 8)
                .frame(idealWidth: .infinity, maxWidth: .infinity)
                .background(.white)
                .cornerRadius(8)
            }
            .padding(.horizontal)
        }
        .padding(.vertical, 70)
        .frame(idealWidth: .infinity, maxWidth: .infinity)
        .background(
            Image("HeaderBackground")
                .resizable()
                .scaledToFill()
                .brightness(-0.08)
        )
        .clipped()
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(isSuggestionPresented: .constant(false))
    }
}
