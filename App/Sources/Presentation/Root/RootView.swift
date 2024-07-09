import SwiftUI

struct RootView: View {
    @EnvironmentObject var sceneState: SceneState

    private let sampleFactory: any SampleFactory
    private let teacherTabBarFactory: any TeacherTabBarFactory
    private let studentTabBarFactory: any StudentTabBarFactory

    public init(
        sampleFactory: any SampleFactory,
        teacherTabBarFactory: any TeacherTabBarFactory,
        studentTabBarFactory: any StudentTabBarFactory
    ) {
        self.sampleFactory = sampleFactory
        self.teacherTabBarFactory = teacherTabBarFactory
        self.studentTabBarFactory = studentTabBarFactory
    }

    var body: some View {
        Group {
            switch sceneState.sceneFlow {
            case .sample:
                AnyView(sampleFactory.makeView())
                    .environmentObject(sceneState)

            case .teacherMain:
                AnyView(teacherTabBarFactory.makeView())
                    .environmentObject(sceneState)

            case .studentMain:
                AnyView(teacherTabBarFactory.makeView())
                    .environmentObject(sceneState)
            }
        }
        .animation(.default, value: sceneState.sceneFlow)
    }
}

#warning("로그인 페이지 완성 시 sample -> login으로 변경")
