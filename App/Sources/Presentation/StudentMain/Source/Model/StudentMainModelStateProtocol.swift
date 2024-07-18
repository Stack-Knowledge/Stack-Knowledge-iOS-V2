import Foundation
import Service

protocol StudentMainModelStateProtocol {
    var missionDataList: [MissionListEntity] { get }
    var rankingDataList: [PointRankingListEntity] { get }
}
