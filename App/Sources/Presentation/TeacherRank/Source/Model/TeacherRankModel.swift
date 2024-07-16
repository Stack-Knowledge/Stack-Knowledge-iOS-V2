import Foundation

import Service

final class TeacherRankModel: ObservableObject, TeacherRankModelStateProtocol {
    var rankingList: [PointRankingListEntity] = [.init(rankingID: "1", cumulatePoint: 1000, user: .init(userId: "0115", userName: "이주연", profileImage: "https://thumb.pann.com/tc_480/http://fimg5.pann.com/new/download.jsp?FileID=64425399"))]
}

extension TeacherRankModel: TeacherRankModelActionsProtocol {
    func updateRankingList(rankingList: [PointRankingListEntity]) {
        self.rankingList = rankingList
    }
}
