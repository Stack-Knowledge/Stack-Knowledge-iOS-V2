import NeedleFoundation
import SwiftUI
import Service

public protocol TeacherMainDependency: Dependency {}

public final class TeacherMainComponent: Component<TeacherMainDependency>, TeacherMainFactory {
    public func makeView() -> some View {
        TeacherMainView()
    }
}
