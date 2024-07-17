import SwiftUI

import Service

struct StudentRankView: View {
    @StateObject var container: MVIContainer<StudentRankIntentProtocol, StudentRankModelStateProtocol>
    var intent: any StudentRankIntentProtocol { container.intent }
    var state: any StudentRankModelStateProtocol { container.model }
    var myInfo: MyInfoEntity? {
        state.myInfo
    }

    var body: some View {
        VStack(spacing: 60) {
            MyRankView(
                profileURL: myInfo?.user.profileImage,
                ranking: myInfo?.ranking ?? 0,
                name: myInfo?.user.userName ?? "",
                point: myInfo?.currentPoint ?? 0
            )
            .padding(.top, 60)

            Spacer()
            
            VStack(alignment: .leading) {
                Text("랭킹")
                    .skFont(.pm20)
                
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 12) {
                        ForEach(state.rankingList.indices, id: \.self) { index in
                            let rank = state.rankingList[index]
                            
                            RankingListRow(
                                ranking: "\(index + 1)",
                                profileURL: rank.user.profileImage,
                                name: rank.user.userName,
                                point: rank.cumulatePoint
                            )

                            Divider()
                        }
                    }
                }
                .padding(.horizontal, 12)

                Spacer()
            }
        }
        .padding(.horizontal, 16)
    }
}
