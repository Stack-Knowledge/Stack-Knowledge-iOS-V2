import Foundation

import Service

protocol TeacherRankModelStateProtocol {
    var rankingList: [PointRankingListEntity] { get }
}

protocol TeacherRankModelActionsProtocol: AnyObject {
    func updateRankingList(rankingList: [PointRankingListEntity])
}
