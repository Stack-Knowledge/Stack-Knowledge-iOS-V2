import Foundation

public struct FetchMyInfoResponseDTO: Decodable {
    public let currentPoint: Int
    public let cumulatePoint: Int
    public let ranking: Int
    public let user: FetchUserInfoResponseDTO
}

extension FetchMyInfoResponseDTO {
    func toDomain() -> MyInfoEntity {
        MyInfoEntity(
            currentPoint: currentPoint,
            cumulatePoint: cumulatePoint,
            ranking: ranking,
            user: user.toDomain()
        )
    }
}
