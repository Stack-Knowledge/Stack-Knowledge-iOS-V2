import SwiftUI

struct MainMissionScrollView: View {
    let title: String = "미소쌤"
    let subtitle: String = "북학파의북학파의북학파의북학파의북학파의북학파의"
    let price: String = "1000 M"
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(1..<7) {_ in
                        VStack {
                            Text(title)
                                .skFont(.pm14)
                                .multilineTextAlignment(.center)
                                .padding(.top, 16)
                            
                            Text(subtitle)
                                .skFont(.pr12)
                                .multilineTextAlignment(.center)
                                .lineLimit(3)
                                .padding(.top, 16)
                                .padding(.horizontal, 16)
                            
                            Spacer()
                            
                            Text(price)
                                .skFont(.pm16)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 24)
                        }
                        .background(Color.white)
                        .frame(width: 117, height: 158)
                        .cornerRadius(10)
                    }
                }
                
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 15.44)
            .background(Color.SKColorSystem.Gray.lightgray1.color)
            .cornerRadius(20)
        }
    }
}
