import SwiftUI

struct MainRankingView: View {
    let profileName: String = "안강호"
    let ownPoint: String = "1000 M"
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15.44) {
                    ForEach(1..<4) { i in
                        ZStack(alignment: .topLeading) {
                            VStack {
                                Image(.bannerImage3)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                    .clipped()
                                
                                Text(profileName)
                                    .skFont(.pm14)
                                    .lineLimit(nil)
                                    .fixedSize(horizontal: false, vertical: true)
                                
                                Spacer().frame(height: 16)
                                
                                Text(ownPoint)
                                    .skFont(.pm16)
                            }
                            .padding(.init(top: 18, leading: 25, bottom: 18, trailing: 25))
                            .background(Color.white)
                            .frame(height: 158)
                            .cornerRadius(10)
                            
                            if i == 1 {
                                Circle()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(Color.SKColorSystem.Medal.firstplace.color)
                                    .overlay(
                                        Text("1")
                                            .skFont(.pm14)
                                    )
                            }
                            else if i == 2 {
                                Circle()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(Color.SKColorSystem.Medal.secondplace.color)
                                    .overlay(
                                        Text("2")
                                            .skFont(.pm14)
                                    )
                            }
                            else if i == 3 {
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
            .padding(.vertical, 16)
            .padding(.horizontal, 15.44)
            .background(Color.SKColorSystem.Gray.lightgray1.color)
            .cornerRadius(20)
        }
    }
}
