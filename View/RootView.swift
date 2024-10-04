import SwiftUI

struct RootView: View {
    @StateObject var controller = RootViewController()
    var body: some View {
        NavigationStack {
            List {
                if let model = controller.data {
                    ForEach(model.results, id: \.self) { data in
                        NavigationLink {
                            ListingDetailView(product: data)
                        } label: {
                            ListingItemView(product: data)
                        }
                    }
                } else {
                    ProgressView()
                }
            }
            .navigationTitle("Listing Table")
            .onAppear {
                Task {
                    try await controller.fetchData()
                }
        }
        }
    }
}

#Preview {
    RootView()
}
