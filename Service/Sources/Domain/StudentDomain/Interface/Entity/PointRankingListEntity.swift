import Foundation

public struct PointRankingListEntity: Equatable {
    public let rankingID: String
    public let cumulatePoint: Int
    public let user: UserInfoEntity

    public init(
        rankingID: String,
        cumulatePoint: Int,
        user: UserInfoEntity
    ) {
        self.rankingID = rankingID
        self.cumulatePoint = cumulatePoint
        self.user = user
    }
}
