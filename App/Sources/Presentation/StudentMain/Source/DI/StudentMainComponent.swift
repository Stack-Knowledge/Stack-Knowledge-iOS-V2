import NeedleFoundation
import Service
import SwiftUI

public protocol StudentMainDependency: Dependency {}

public final class StudentMainComponent: Component<StudentMainDependency>, StudentMainFactory {
    public func makeView() -> some View {
        let model = StudentMainModel()
        let intent = StudentMainIntent()

        let container = MVIContainer(
            intent: intent,
            model: model as StudentMainModelStateProtocol,
            modelChangePublisher: model.objectWillChange
        )

        return StudentMainView(studentMainContainer: container)
    }
}
