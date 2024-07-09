import NeedleFoundation
import SwiftUI

public protocol TeacherStoreDependency: Dependency {}

public final class TeacherStoreComponent: Component<TeacherStoreDependency>, TeacherStoreFactory {
    public func makeView() -> some View {
        TeacherStoreView()
    }
}
