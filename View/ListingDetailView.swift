import SwiftUI

struct ListingDetailView: View {
    let product: ListingDataModel
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: product.image_urls[0] )) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
            } placeholder: {
                ProgressView()
            }
            
            Text("Title: \(product.name )")
                .font(.headline)
                .foregroundStyle(.primary)
            Text("Price: \(product.price)")
            Text("created_at: \(product.created_at )")
            Text("image_ids: \(product.image_ids[0])")
            
            Spacer()
        }
    }
}

#Preview {
    ListingDetailView(product: ListingDataModel(created_at: "", price: "", name: "", uid: "", image_ids: [""], image_urls: [""], image_urls_thumbnails: [""]))
}
