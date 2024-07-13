import SwiftUI

struct MainRankingScrollView: View {
    var profileImageUrl: String
    var profileName: String
    var skPoint: String
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(1..<4) { ranking in
                        ZStack(alignment: .topLeading) {
                            VStack {
                                AsyncImage(url: URL(string: profileImageUrl))
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                    .clipped()
                                
                                Text(profileName)
                                    .skFont(.pm14)
                                
                                Spacer().frame(height: 16)
                                
                                Text(skPoint)
                                    .skFont(.pm16)
                            }
                            .padding(.init(top: 25, leading: 25, bottom: 25, trailing: 25))
                            .background(Color.white)
                            .cornerRadius(10)
                            .frame(height: 158)
                            
                            if ranking == 1 {
                                Circle()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(Color.SKColorSystem.Medal.firstplace.color)
                                    .overlay(
                                        Text("1")
                                            .skFont(.pm14)
                                    )
                            } 
                            else if ranking == 2 {
                                Circle()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(Color.SKColorSystem.Medal.secondplace.color)
                                    .overlay(
                                        Text("2")
                                            .skFont(.pm14)
                                    )
                            } 
                            else if ranking == 3 {
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
            .padding(.horizontal, 16)
            .background(Color.SKColorSystem.Gray.lightgray1.color)
            .cornerRadius(20)
        }
    }
}
