import Foundation

public struct MyInfoEntity: Equatable {
    public let currentPoint: Int
    public let cumulatePoint: Int
    public let ranking: Int
    public let user: UserInfoEntity

    public init(
        currentPoint: Int,
        cumulatePoint: Int,
        ranking: Int,
        user: UserInfoEntity
    ) {
        self.currentPoint = currentPoint
        self.cumulatePoint = cumulatePoint
        self.ranking = ranking
        self.user = user
    }
}
