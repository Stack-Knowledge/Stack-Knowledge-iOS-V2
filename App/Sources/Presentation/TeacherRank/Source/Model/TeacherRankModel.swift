import Foundation

import Service

final class TeacherRankModel: ObservableObject, TeacherRankModelStateProtocol {
    var rankingList: [PointRankingListEntity] = []
}

extension TeacherRankModel: TeacherRankModelActionsProtocol {
    func updateRankingList(rankingList: [PointRankingListEntity]) {
        self.rankingList = rankingList
    }
}
