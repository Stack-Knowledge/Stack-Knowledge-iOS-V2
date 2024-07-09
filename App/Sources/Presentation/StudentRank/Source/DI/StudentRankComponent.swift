import NeedleFoundation
import SwiftUI

public protocol StudentRankDependency: Dependency {}

public final class StudentRankComponent: Component<StudentRankDependency>, StudentRankFactory {
    public func makeView() -> some View {
        StudentRankView()
    }
}
