import SwiftUI

struct FilterButton: View {
    @State private var showSheet = false

    var body: some View {
        VStack {
            Spacer()
            HStack() {
                Spacer()
                Button(action: {self.showSheet = true}) {
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(Color("ButtonText"))
                        .font(.system(size: 24))
                }
                .sheet(isPresented: self.$showSheet) {
                    FiltersSheet()
                }
                .frame(width: 60, height: 60)
                .background(Color("Button"))
                .cornerRadius(30.0)
                .shadow(color: .gray, radius: 3, x: 3, y: 3)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16.0, trailing: 16.0))
            }
        }
    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            FilterButton()
        }
        .foregroundColor(Color("Background"))
    }
}
