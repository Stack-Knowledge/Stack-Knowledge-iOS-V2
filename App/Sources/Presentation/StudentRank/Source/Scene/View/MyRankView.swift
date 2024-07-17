import SwiftUI

struct MyRankView: View {
    let profileURL: String?
    let ranking: Int
    let name: String
    let point: Int

    var body: some View {
        VStack(spacing: 8) {
            if let profileURL = profileURL {
                AsyncImage(url: URL(string: profileURL)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 110, height: 110)
            } else {
                SKBaseProfileImage(.BaseProfileImage)
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 110, height: 110)
            }

            HStack(spacing: 6) {
                Text("\(ranking.description)위")

                Divider()

                Text(name)

                Divider()

                Text("\(point.description)M")
            }
            .skFont(.pm14)
            .frame(height: 17)
        }
    }
}
