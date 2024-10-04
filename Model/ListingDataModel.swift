import Foundation

struct resultDataModel: Codable {
    let results: [ListingDataModel]
}

struct ListingDataModel: Identifiable, Codable, Hashable {
    let id: Int = 0
    let created_at: String
    let price: String
    let name: String
    let uid: String
    let image_ids: [String]
    let image_urls: [String]
    let image_urls_thumbnails: [String]
}
