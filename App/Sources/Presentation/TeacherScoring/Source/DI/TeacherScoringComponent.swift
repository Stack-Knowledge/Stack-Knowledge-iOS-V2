import NeedleFoundation
import SwiftUI

public protocol TeacherScoringDependency: Dependency {}

public final class TeacherScoringComponent: Component<TeacherScoringDependency>, TeacherScoringFactory {
    public func makeView() -> some View {
        TeacherScoringView()
    }
}
