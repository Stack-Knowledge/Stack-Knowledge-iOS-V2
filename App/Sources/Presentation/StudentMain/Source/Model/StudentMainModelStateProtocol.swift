import Foundation
import Service

protocol StudentMainModelStateProtocol {
    var missionDataList: [MissionListEntity] { get }
    var rankingDataList: [PointRankingListEntity] { get }
    var tester: String { get }
    var subtitle: String { get }
    var price: String { get }
    var profileImageUrl: String { get }
    var profileName: String { get }
    var skPoint: String { get }
    var listName: String { get }
    var listRequestDate: String { get }
}
