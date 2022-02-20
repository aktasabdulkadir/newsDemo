

import Foundation
//Encodable + Decodable = codable
struct News: Decodable {
    let title: String
    let story: String
}
