import SwiftUI

import PopupView

struct StudentMainView: View {
    @StateObject var studentMainContainer: MVIContainer<StudentMainIntent, StudentMainModelStateProtocol>
    
    @State private var showPopup = false
    
    var body: some View {
        NavigationView {
            VStack {
                BannerView()
                
                Text("* 문제는 12:30 ~ 19:30분까지 풀수 있습니다.")
                    .skFont(.pr12)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 16)
                
                Text("문제 풀기")
                    .skFont(.ps18)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 15)
                    .padding(.leading, 16)
                
                MainMissionScrollView(missionDataList: studentMainContainer.model.missionDataList)
                .padding(.top, 8)
                .padding(.horizontal, 16)
                
                MainRankingScrollView(rankingDataList: studentMainContainer.model.rankingDataList)
                .padding(.top, 10)
                .padding(.horizontal, 16)
            }
            .logoNavigationBar()
        }
    }
}
