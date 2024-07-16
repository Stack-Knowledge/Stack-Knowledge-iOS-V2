import Foundation

import Service

final class StudentRankIntent: StudentRankIntentProtocol {
    private weak var model: StudentRankModelActionsProtocol?
    private let fetchMyInfoUseCase: any FetchMyInfoUseCase
    private let fetchPointRankingListUseCase: any FetchPointRankingListUseCase

    init(
        model: StudentRankModelActionsProtocol?,
        fetchMyInfoUseCase: any FetchMyInfoUseCase,
        fetchPointRankingListUseCase: any FetchPointRankingListUseCase
    ) {
        self.model = model
        self.fetchMyInfoUseCase = fetchMyInfoUseCase
        self.fetchPointRankingListUseCase = fetchPointRankingListUseCase
    }

    func onAppear() {
        Task {
            do {
                let info = try await fetchMyInfo()
                let list = try await fetchRankingList()

                model?.updateMyInfo(info: info)
                model?.updateRankingList(list: list)
            } catch {
                print(error.localizedDescription)
            }
        }
    }

    func fetchMyInfo() async throws -> MyInfoEntity {
        return try await fetchMyInfoUseCase()
    }

    func fetchRankingList() async throws -> [PointRankingListEntity] {
        return try await fetchPointRankingListUseCase()
    }
}
