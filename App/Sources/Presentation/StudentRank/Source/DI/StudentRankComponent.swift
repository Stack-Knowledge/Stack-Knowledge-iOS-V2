import SwiftUI

import Service
import NeedleFoundation

public protocol StudentRankDependency: Dependency {
    var fetchMyInfoUseCase: any FetchMyInfoUseCase { get }
    var fetchPointRankingListUseCase: any FetchPointRankingListUseCase { get }
}

public final class StudentRankComponent: Component<StudentRankDependency>, StudentRankFactory {
    public func makeView() -> some View {
        let model = StudentRankModel()
        let intent = StudentRankIntent(
            model: model,
            fetchMyInfoUseCase: dependency.fetchMyInfoUseCase,
            fetchPointRankingListUseCase: dependency.fetchPointRankingListUseCase
        )

        let container = MVIContainer(
            intent: intent as StudentRankIntentProtocol,
            model: model as StudentRankModelStateProtocol,
            modelChangePublisher: model.objectWillChange
        )

        return StudentRankView(container: container)
    }
}
