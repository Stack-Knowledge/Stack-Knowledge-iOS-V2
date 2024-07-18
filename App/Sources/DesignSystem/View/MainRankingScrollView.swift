import Service
import SwiftUI

struct MainRankingScrollView: View {
    let profileImageUrl: String
    let profileName: String
    let skPoint: String
    
    let rankingDataList: [PointRankingListEntity]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(rankingDataList.indices, id: \.self) { ranking in
                    if let rankingList = rankingDataList[safe: ranking] {
                        ZStack(alignment: .topLeading) {
                            VStack {
                                AsyncImage(url: URL(string: rankingList.user.profileImage))
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                    .clipped()
                                
                                Text(rankingList.user.userName)
                                    .skFont(.pm14)
                                
                                Spacer().frame(height: 16)
                                
                                Text(rankingList.cumulatePoint.description)
                                    .skFont(.pm16)
                            }
                            .padding(.init(top: 18, leading: 30, bottom: 18, trailing: 30))
                            .background(Color.white)
                            .cornerRadius(10)
                            
                            if ranking == 0 {
                                Circle()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(Color.SKColorSystem.Medal.firstplace.color)
                                    .overlay(
                                        Text("1")
                                            .skFont(.pm14)
                                    )
                            } else if ranking == 1 {
                                Circle()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(Color.SKColorSystem.Medal.secondplace.color)
                                    .overlay(
                                        Text("2")
                                            .skFont(.pm14)
                                    )
                            } else if ranking == 2 {
                                Circle()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(Color.SKColorSystem.Medal.thirdplace.color)
                                    .overlay(
                                        Text("3")
                                            .skFont(.pm14)
                                    )
                            }
                        }
                    }
                }
            }
        }
        .frame(height: 160)
        .padding(.vertical, 16)
        .padding(.horizontal, 16)
        .background(Color.SKColorSystem.Gray.lightgray1.color)
        .cornerRadius(20)
    }
}
