import NeedleFoundation
import SwiftUI

public protocol TeacherMakingDependency: Dependency {}

public final class TeacherMakingComponent: Component<TeacherMakingDependency>, TeacherMakingFactory {
    public func makeView() -> some View {
        TeacherMakingView()
    }
}
