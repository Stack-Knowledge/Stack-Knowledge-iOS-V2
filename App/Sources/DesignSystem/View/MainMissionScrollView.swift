import SwiftUI

struct MainMissionScrollView: View {
    var tester: String
    var subtitle: String
    var price: String
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(1..<7) { _ in
                        VStack {
                            Text(tester)
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
                        .padding(.init(top: 18, leading: 35, bottom: 18, trailing: 35))
                        .background(Color.white)
                        .cornerRadius(10)
                        .frame(height: 158)
                    }
                }
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 16)
            .background(Color.SKColorSystem.Gray.lightgray1.color)
            .cornerRadius(20)
        }
    }
}
