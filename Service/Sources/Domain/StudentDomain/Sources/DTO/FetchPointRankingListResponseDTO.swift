import Foundation

public struct FetchPointRankingListResponseDTO: Decodable {
    public let rankingID: String
    public let cumulatePoint: Int
    public let user: FetchUserInfoResponseDTO
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
