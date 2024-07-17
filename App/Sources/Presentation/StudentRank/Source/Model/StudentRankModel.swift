import Foundation

import Service

final class StudentRankModel: ObservableObject, StudentRankModelStateProtocol {
    var myInfo: MyInfoEntity? {
        get {
            _myInfo.map {
                MyInfoEntity(
                    currentPoint: $0.currentPoint,
                    cumulatePoint: $0.cumulatePoint,
                    ranking: $0.ranking,
                    user: UserInfoEntity(
                        userId: $0.user.userId,
                        userName: $0.user.userName,
                        profileImage: $0.user.profileImage
                    )
                )
            }
        }
        set { _myInfo = newValue }
    }
    @Published var _myInfo: MyInfoEntity?
    @Published var rankingList: [PointRankingListEntity] = []
}

extension StudentRankModel: StudentRankModelActionsProtocol {
    func updateMyInfo(info: MyInfoEntity) {
        self.myInfo = info
    }

    func updateRankingList(list: [PointRankingListEntity]) {
        self.rankingList = list
    }
}
