import Service
import SwiftUI

struct MainMissionScrollView: View {
    let missionDataList: [MissionListEntity]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(missionDataList.indices, id: \.self) { mission in
                        if let missionList = missionDataList[safe: mission] {
                            VStack(alignment: .center) {
                                Text(missionList.user.userName)
                                    .skFont(.pm14)
                                    .padding(.top, 16)
                                
                                Text(missionList.missionTitle)
                                    .skFont(.pr12)
                                    .lineLimit(3)
                                    .padding(.top, 16)
                                    .padding(.horizontal, 16)
                                
                                Spacer()
                                
                                Text(missionList.missionPoint.description)
                                    .skFont(.pm16)
                                    .padding(.bottom, 24)
                            }
                            .padding(.init(top: 18, leading: 40, bottom: 18, trailing: 40))
                            .background(Color.white)
                            .cornerRadius(10)
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
}
