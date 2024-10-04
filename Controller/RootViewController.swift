import Foundation
import SwiftUI

@MainActor
class RootViewController: ObservableObject {
    
    private let urlString = "https://ey3f2y0nre.execute-api.us-east-1.amazonaws.com/default/dynamodb-writer"
    @Published var data: resultDataModel?
    
    public func fetchData() async throws {
        let url = URL(string: urlString)
        if let url = url {
            data = try await APICaller.shared.fetchData(url: url)
            print(data?.results ?? "no data")
        }
    }
}
