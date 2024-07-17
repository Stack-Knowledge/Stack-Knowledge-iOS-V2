import Foundation

import Service

protocol StudentRankModelStateProtocol {
    var myInfo: MyInfoEntity? { get }
    var rankingList: [PointRankingListEntity] { get }
}

protocol StudentRankModelActionsProtocol: AnyObject {
    func updateMyInfo(info: MyInfoEntity)
    func updateRankingList(list: [PointRankingListEntity])
}
