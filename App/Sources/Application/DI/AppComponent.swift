import NeedleFoundation
import Service
import SwiftUI

public final class AppComponent: BootstrapComponent {
    public func makeRootView() -> some View {
        rootComponent.makeView()
    }

    var rootComponent: RootComponent {
        RootComponent(parent: self)
    }
}

public extension AppComponent {
    var sampleFactory: any SampleFactory {
        SampleComponent(parent: self)
    }

    var studentMainFactory: any StudentMainFactory {
        StudentMainComponent(parent: self)
    }

    var studentMissionFactory: any StudentMissionFactory {
        StudentMissionComponent(parent: self)
    }

    var studentRankFactory: any StudentRankFactory {
        StudentRankComponent(parent: self)
    }

    var studentStoreFactory: any StudentStoreFactory {
        StudentStoreComponent(parent: self)
    }

    var studentTabBarFactory: any StudentTabBarFactory {
        StudentTabBarComponent(parent: self)
    }

    var teacherMainFactory: any TeacherMainFactory {
        TeacherMainComponent(parent: self)
    }

    var teacherMakingFactory: any TeacherMakingFactory {
        TeacherMakingComponent(parent: self)
    }

    var teacherRankFactory: any TeacherRankFactory {
        TeacherRankComponent(parent: self)
    }

    var teacherScoringFactory: any TeacherScoringFactory {
        TeacherScoringComponent(parent: self)
    }

    var teacherStoreFactory: any TeacherStoreFactory {
        TeacherStoreComponent(parent: self)
    }

    var teacherTabBarFactory: any TeacherTabBarFactory {
        TeacherTabBarComponent(parent: self)
    }
}
