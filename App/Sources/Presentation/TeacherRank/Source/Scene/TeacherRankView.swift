import SwiftUI

struct TeacherRankView: View {
    @StateObject var container: MVIContainer<TeacherRankIntent, TeacherRankModelStateProtocol>
    var intent: any TeacherRankIntentProtocol { container.intent }
    var state: any TeacherRankModelStateProtocol { container.model }

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                LazyVStack(spacing: 12) {
                    ForEach(state.rankingList.indices, id: \.self) { index in
                        let rankingList = state.rankingList[safe: index]
                        
                        if let ranking = rankingList {
                            RankingListRow(
                                ranking: "\(index + 1)",
                                profileImage: ranking.user.profileImage,
                                name: ranking.user.userName,
                                point: ranking.cumulatePoint
                            )
                            .padding(.horizontal, 8)
                        }
                        
                        Divider()
                    }
                }
            }
            .navigationTitle("랭킹")
            .padding(.horizontal, 16)
        }
        .onAppear {
            intent.onAppear()
        }
    }
}
