import Foundation

import Service

final class TeacherRankIntent: TeacherRankIntentProtocol {
    private weak var model: TeacherRankModelActionsProtocol?
    private let fetchPointRankingListUseCase: any FetchPointRankingListUseCase

    init(
        model: TeacherRankModelActionsProtocol,
        fetchPointRankingListUseCase: any FetchPointRankingListUseCase
    ) {
        self.model = model
        self.fetchPointRankingListUseCase = fetchPointRankingListUseCase
    }

    func onAppear() {
        Task {
            do {
                let rankingList = try await fetchPointRankingListUseCase()
                
                model?.updateRankingList(list: rankingList)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
