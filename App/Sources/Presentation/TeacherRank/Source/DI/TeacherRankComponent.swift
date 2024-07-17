import SwiftUI

import Service
import NeedleFoundation

public protocol TeacherRankDependency: Dependency {
    var fetchPointRankingListUseCase: any FetchPointRankingListUseCase { get }
}

public final class TeacherRankComponent: Component<TeacherRankDependency>, TeacherRankFactory {
    public func makeView() -> some View {
        let model = TeacherRankModel()
        let intent = TeacherRankIntent(model: model, fetchPointRankingListUseCase: dependency.fetchPointRankingListUseCase)

        let container = MVIContainer(
            intent: intent as TeacherRankIntentProtocol,
            model: model as TeacherRankModelStateProtocol,
            modelChangePublisher: model.objectWillChange
        )

        return TeacherRankView(container: container)
    }
}
