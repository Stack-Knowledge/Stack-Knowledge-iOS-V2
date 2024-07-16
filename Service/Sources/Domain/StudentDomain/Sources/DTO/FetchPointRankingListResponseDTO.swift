import Foundation

public struct FetchPointRankingListResponseDTO: Decodable {
    public let rankingID: String
    public let cumulatePoint: Int
    public let user: FetchUserInfoResponseDTO

    enum CodingKeys: String, CodingKey {
        case rankingID = "id"
        case cumulatePoint
        case user
    }
}

extension FetchPointRankingListResponseDTO {
    func toDomain() -> [PointRankingListEntity] {
        [PointRankingListEntity(
            rankingID: rankingID,
            cumulatePoint: cumulatePoint,
            user: user.toDomain()
        )]
    }
}
