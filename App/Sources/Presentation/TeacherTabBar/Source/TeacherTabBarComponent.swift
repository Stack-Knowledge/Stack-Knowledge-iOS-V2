import NeedleFoundation
import SwiftUI

public protocol TeacherTabBarDependency: Dependency {
    var teacherMainFactory: any TeacherMainFactory { get }
    var teacherScoringFactory: any TeacherScoringFactory { get }
    var teacherMakingFactory: any TeacherMakingFactory { get }
    var teacherStoreFactory: any TeacherStoreFactory { get }
    var teacherRankFactory: any TeacherRankFactory { get }
}

public final class TeacherTabBarComponent: Component<TeacherTabBarDependency>, TeacherTabBarFactory {
    public func makeView() -> some View {
        TeacherTabBarView(
            teacherMainFactory: dependency.teacherMainFactory,
            teacherScoringFactory: dependency.teacherScoringFactory,
            teacherMakingFactory: dependency.teacherMakingFactory,
            teacherStoreFactory: dependency.teacherStoreFactory,
            teacherRankFactory: dependency.teacherRankFactory
        )
    }
}
