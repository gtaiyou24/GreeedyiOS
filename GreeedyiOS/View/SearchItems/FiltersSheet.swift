import SwiftUI

struct FiltersSheet: View {
    @Environment(\.dismiss) var dismiss
    
    private var cells = [
        ["label": "カテゴリ", "view": Text("カテゴリページ")],
        ["label": "カラー", "view": Text("カラーページ")],
        ["label": "価格", "view": Text("価格ページ")]
    ]
    
    init() {
        // Formのデフォルト背景色をクリア
        UITableView.appearance().backgroundColor = .clear
    }

    var body: some View {
        NavigationView {
            Form {
                List {
                    NavigationLink(destination: Text("カテゴリページ")) {
                        Cell(label: "カテゴリ")
                    }
                    .listRowBackground(Color("Background"))
                    .foregroundColor(.white)
                    
                    NavigationLink(destination: Text("カラーページ")) {
                        Cell(label: "カラー")
                    }
                    .listRowBackground(Color("Background"))
                    .foregroundColor(.white)
                    
                    NavigationLink(destination: Text("価格ページ")) {
                        Cell(label: "価格")
                    }
                    .listRowBackground(Color("Background"))
                    .foregroundColor(.white)
                    
                    // NOTE : →(矢印)を白色にする方法
//                    ZStack {
//                        NavigationLink(destination: Text("柄！")) {
//                            EmptyView()
//                        }
//
//                        HStack {
//                            Text("柄")
//                            Spacer()
//                            Image(systemName: "chevron.right")
//                              .resizable()
//                              .aspectRatio(contentMode: .fit)
//                              .frame(width: 7)
//                              .foregroundColor(.white) //Apply color for arrow only
//                        }
//                    }
//                    .listRowBackground(BACKGROUND_COLOR)
//                    .foregroundColor(.white)
                }
            }
            .background(Color("Background"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("絞り込み")
                        .font(.title)
                        .foregroundColor(Color("Headline"))
                        .bold()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {self.dismiss()}) {
                        Image(systemName: "xmark.circle")
                            .foregroundColor(Color("Headline"))
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    Button(action: { self.dismiss() }) {
                        Text("検索")
                            .font(.headline)
                            .foregroundColor(Color("ButtonText"))
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .background(Color("Button"))
                    .cornerRadius(50)
                }
            }
        }
    }
}

struct Cell: View {
    var label: String

    var body: some View {
        Text(self.label)
    }
}

struct FiltersSheet_Previews: PreviewProvider {
    static var previews: some View {
        Text("")
            .sheet(isPresented: .constant(true)) {
                FiltersSheet()
            }
    }
}
