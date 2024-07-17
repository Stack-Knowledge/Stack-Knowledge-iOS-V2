import SwiftUI

struct TeacherRankView: View {
    @StateObject var container: MVIContainer<TeacherRankIntentProtocol, TeacherRankModelStateProtocol>
    var intent: any TeacherRankIntentProtocol { container.intent }
    var state: any TeacherRankModelStateProtocol { container.model }

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 4) {
                    ForEach(state.rankingList.indices, id: \.self) { index in
                        let rankingList = state.rankingList[safe: index]
                        
                        RankingListRow(
                            ranking: "\(index + 1)",
                            profileURL: rankingList?.user.profileImage,
                            name: rankingList?.user.userName ?? "",
                            point: rankingList?.cumulatePoint ?? 0
                        )
                        .padding(.horizontal, 8)

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
