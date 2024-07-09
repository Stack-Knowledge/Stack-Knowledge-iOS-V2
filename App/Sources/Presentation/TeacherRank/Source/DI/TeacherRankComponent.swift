import NeedleFoundation
import SwiftUI

public protocol TeacherRankDependency: Dependency {}

public final class TeacherRankComponent: Component<TeacherRankDependency>, TeacherRankFactory {
    public func makeView() -> some View {
        TeacherRankView()
    }
}
