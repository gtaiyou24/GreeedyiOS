import Foundation
import SwiftUI


struct Category: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var _imageUrl: String
    var subCategories: [Category]?
    
    var imageUrl: URL? {
        URL(string: self._imageUrl)
    }
}
