import Foundation

import Service

final class TeacherRankModel: ObservableObject, TeacherRankModelStateProtocol {
    @Published var rankingList: [PointRankingListEntity] = []
}

extension TeacherRankModel: TeacherRankModelActionsProtocol {
    func updateRankingList(list: [PointRankingListEntity]) {
        self.rankingList = list
    }
}
