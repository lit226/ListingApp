import SwiftUI

struct ListingItemView: View {
    let product: ListingDataModel

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: product.image_urls_thumbnails[0] )) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 75, height: 75)
                    .cornerRadius(10)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Title: \(product.name )")
                    .font(.headline)
                    .foregroundStyle(.primary)
                Text("Price: \(product.price)")
            }
        }
    }
}

#Preview {
    ListingItemView(product: ListingDataModel(created_at: "", price: "", name: "", uid: "", image_ids: [""], image_urls: [""], image_urls_thumbnails: [""]))
}
