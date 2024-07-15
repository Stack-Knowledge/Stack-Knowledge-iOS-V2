import SwiftUI

public struct RankingListRow: View {
    let ranking: String
    let profileImage: String
    let name: String
    let point: Int

    public var body: some View {
        HStack {
            HStack(spacing: 8) {
                Text(ranking)
                    .skFont(.pm20)

                AsyncImage(url: URL(string: profileImage)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 50, height: 50)
                .cornerRadius(100)

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
