import SwiftUI

import PopupView

struct StudentMainView: View {
    @StateObject var studentMainContainer: MVIContainer<StudentMainIntent, StudentMainModelStateProtocol>
    
    @State private var showPopup = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                BannerView()
                
                VStack(alignment: .leading) {
                    Text("* 문제는 12:30 ~ 19:30분까지 풀수 있습니다.")
                        .skFont(.pr12)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("문제 풀기")
                        .skFont(.ps18)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 15)
                    
                    MainMissionScrollView(missionDataList: studentMainContainer.model.missionDataList)
                        .padding(.top, 8)
                    
                    MainRankingScrollView(rankingDataList: studentMainContainer.model.rankingDataList)
                        .padding(.top, 10)
                }
                .padding(.horizontal, 16)
            }
            .logoNavigationBar()
        }
    }
}
