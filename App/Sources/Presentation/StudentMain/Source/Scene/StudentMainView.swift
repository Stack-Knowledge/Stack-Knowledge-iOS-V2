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
                
                MainMissionScrollView(tester: studentMainContainer.model.tester,
                                      subtitle: studentMainContainer.model.subtitle,
                                      price: studentMainContainer.model.price
                )
                .padding(.top, 8)
                .padding(.horizontal, 16)
                
                MainRankingScrollView(profileImageUrl: studentMainContainer.model.profileImageUrl,
                                      profileName: studentMainContainer.model.profileName,
                                      skPoint: studentMainContainer.model.skPoint
                )
                .padding(.top, 10)
                .padding(.horizontal, 16)
            }
            .logoNavigationBar()
            .overlay(alignment: .bottomTrailing) {
                Button {
                    showPopup = true
                } label: {
                    Image(systemName: "person.2")
                        .resizable()
                        .foregroundColor(.white)
                        .padding(16)
                        .background(Circle().fill(Color.SKColorSystem.Main.mainColor.color))
                        .frame(width: 60, height: 60)
                        .padding(.trailing, 30)
                        .padding(.bottom, 74)
                }
            }
            .popup(isPresented: $showPopup) {
                SignupListPopupView(studentMainContainer: studentMainContainer, showPopup: $showPopup)
            } customize: {
                $0
                    .type(.default)
                    .position(.center)
                    .animation(.spring())
                    .closeOnTapOutside(false)
                    .closeOnTap(false)
            }
        }
    }
}
