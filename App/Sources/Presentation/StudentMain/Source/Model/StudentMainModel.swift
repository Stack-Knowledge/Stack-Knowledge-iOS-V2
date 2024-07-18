import Foundation
import Service

final class StudentMainModel: ObservableObject, StudentMainModelStateProtocol {
    @Published var missionDataList: [MissionListEntity] = []
    @Published var rankingDataList: [PointRankingListEntity] = []
}
