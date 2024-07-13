import SwiftUI

struct BannerView: View {
    @State private var currentIndex = 0
    
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    var body: some View {
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
    }
}
