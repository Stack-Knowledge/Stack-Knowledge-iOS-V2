import SwiftUI

struct StudentMainView: View {
    @State private var currentIndex = 0
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationView {
            VStack {
                TabView(selection: $currentIndex) {
                    SKBannerImage(.Banner1)
                        .tag(0)
                    
                    SKBannerImage(.Banner2)
                        .tag(1)
                    
                    SKBannerImage(.Banner3)
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .automatic))
                .frame(height: 180)
                .onReceive(timer) { _ in
                    withAnimation {
                        currentIndex = (currentIndex + 1) % 3
                    }
                }
                
                Text("* 문제는 12:30 ~ 19:30분까지 풀수 있습니다.")
                    .skFont(.pr12)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 16)
                
                Text("문제 풀기")
                    .skFont(.ps18)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 32)
                    .padding(.leading, 16)
                
                MainMissionScrollView()
                    .padding(.top, 8)
                    .padding(.horizontal, 16)
                
                MainRankingView()
                    .padding(.top, 20)
                    .padding(.horizontal, 16)
    
            }
            .logoNavigationBar()
        }
    }
}
