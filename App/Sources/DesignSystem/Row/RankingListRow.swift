import SwiftUI

public struct RankingListRow: View {
    let ranking: String
    let profileURL: String?
    let name: String
    let point: Int

    public var body: some View {
        HStack {
            HStack(spacing: 8) {
                Text(ranking)
                    .skFont(.pm20)

                if let profileURL = profileURL {
                    AsyncImage(url: URL(string: profileURL)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                } else {
                    SKBaseProfileImage(.BaseProfileImage)
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 50, height: 50)
                }

                Text(name)
                    .skFont(.pm14)
            }

            Spacer()

            HStack(spacing: 2) {
                Text(point.description)
                    .skFont(.pm14)

                Text("M")
                    .skFont(.pm14)
            }
        }
    }
}
