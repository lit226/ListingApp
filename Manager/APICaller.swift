import Foundation

class APICaller {
    public static let shared = APICaller()
    private init() {}
    
    func fetchData(url : URL) async throws -> resultDataModel {
        let data = try await URLSession.shared.data(from: url)
        let model = try JSONDecoder().decode(resultDataModel.self, from: data.0)
        
        return model
    }
}
