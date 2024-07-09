import NeedleFoundation
import SwiftUI

public protocol RootDependency: Dependency {
    var sampleFactory: any SampleFactory { get }
    var teacherTabBarFactory: any TeacherTabBarFactory { get }
    var studentTabBarFactory: any StudentTabBarFactory { get }
}

public final class RootComponent: Component<RootDependency> {
    public func makeView() -> some View {
        RootView(
            sampleFactory: dependency.sampleFactory,
            teacherTabBarFactory: dependency.teacherTabBarFactory,
            studentTabBarFactory: dependency.studentTabBarFactory
        )
    }
}

#warning("로그인 페이지 완성 시 sample -> login으로 변경")
