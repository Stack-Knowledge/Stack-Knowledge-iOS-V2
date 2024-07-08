import NeedleFoundation
import SwiftUI

public protocol RootDependency: Dependency {
    var sampleFactory: any SampleFactory { get }
    var teacherMainFactory: any TeacherMainFactory { get }
    var studentMainFactory: any StudentMainFactory { get }
}

public final class RootComponent: Component<RootDependency> {
    public func makeView() -> some View {
        RootView(
            sampleFactory: dependency.sampleFactory,
            teacherMainFactory: dependency.teacherMainFactory,
            studentMainFactory: dependency.studentMainFactory
        )
    }
}
#warning("로그인 페이지 완성 시 sample -> login으로 변경")
