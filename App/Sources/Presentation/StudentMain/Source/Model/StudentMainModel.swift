import Foundation
import Service

final class StudentMainModel: ObservableObject, StudentMainModelStateProtocol {
    @Published var missionDataList: [MissionListEntity] = []
    @Published var rankingDataList: [PointRankingListEntity] = []
    @Published var tester: String = ""
    @Published var subtitle: String = ""
    @Published var price: String = ""
    @Published var profileImageUrl: String = ""
    @Published var profileName: String = ""
    @Published var skPoint: String = ""
    @Published var listName: String = ""
    @Published var listRequestDate: String = ""
}
