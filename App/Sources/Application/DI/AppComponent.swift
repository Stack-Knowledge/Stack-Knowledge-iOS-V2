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

    var teacherMainFactory: any TeacherMainFactory {
        TeacherMainComponent(parent: self)
    }

    var studentMainFactory: any StudentMainFactory {
        StudentMainComponent(parent: self)
    }
}
