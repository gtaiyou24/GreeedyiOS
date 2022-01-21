import SwiftUI
import WebKit

struct WebPageView: UIViewRepresentable {
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: url)!))
    }
}

struct WebPageView_Previews: PreviewProvider {
    static var previews: some View {
        WebPageView(url: "https://qiita.com")
    }
}
