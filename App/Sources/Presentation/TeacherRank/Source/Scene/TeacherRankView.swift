import SwiftUI

struct TeacherRankView: View {
    @StateObject var container: MVIContainer<TeacherRankIntent, TeacherRankModelStateProtocol>
    var intent: any TeacherRankIntentProtocol { container.intent }
    var state: any TeacherRankModelStateProtocol { container.model }

    var body: some View {
        VStack(spacing: 0) {
            LazyVStack(spacing: 12) {
                ForEach(state.rankingList.indices, id: \.self) { index in
                    let rankingList = state.rankingList[safe: index]

                    if let ranking = rankingList {
                        RankingListRow(
                            ranking: index.description,
                            profileImage: ranking.user.profileImage,
                            name: ranking.user.userName,
                            point: ranking.cumulatePoint
                        )
                    }
                }
            }
        }
        .navigationTitle("랭킹")
        .onAppear {
            intent.onAppear()
        }
    }
}
