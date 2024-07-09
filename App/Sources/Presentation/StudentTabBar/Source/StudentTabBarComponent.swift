import NeedleFoundation
import SwiftUI

public protocol StudentTabBarDependency: Dependency {
    var studentMainFactory: any StudentMainFactory { get }
    var studentMissionFactory: any StudentMissionFactory { get }
    var studentStoreFactory: any StudentStoreFactory { get }
    var studentRankFactory: any StudentRankFactory { get }
}

public final class StudentTabBarComponent: Component<StudentTabBarDependency>, StudentTabBarFactory {
    public func makeView() -> some View {
        StudentTabBarView(
            studentMainFactory: dependency.studentMainFactory,
            studentMissionFactory: dependency.studentMissionFactory,
            studentStoreFactory: dependency.studentStoreFactory,
            studentRankFactory: dependency.studentRankFactory
        )
    }
}
