import Foundation
import UIKit

struct Items: Hashable {
    var list: [Item]
    
    init() {
        self.list = [Item]()
    }
    
    init(list: [Item]) {
        self.list = list
    }
}
