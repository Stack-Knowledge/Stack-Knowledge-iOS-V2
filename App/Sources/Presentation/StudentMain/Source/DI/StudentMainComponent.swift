import NeedleFoundation
import Service
import SwiftUI

public protocol StudentMainDependency: Dependency {}

public final class StudentMainComponent: Component<StudentMainDependency>, StudentMainFactory {
    public func makeView() -> some View {
        StudentMainView()
    }
}
