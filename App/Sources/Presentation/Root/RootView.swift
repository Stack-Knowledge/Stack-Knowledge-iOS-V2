import SwiftUI

struct RootView: View {
    @EnvironmentObject var sceneState: SceneState

    private let sampleFactory: any SampleFactory
    private let teacherMainFactory: any TeacherMainFactory
    private let studentMainFactory: any StudentMainFactory

    public init(
        sampleFactory: any SampleFactory,
        teacherMainFactory: any TeacherMainFactory,
        studentMainFactory: any StudentMainFactory
    ) {
        self.sampleFactory = sampleFactory
        self.teacherMainFactory = teacherMainFactory
        self.studentMainFactory = studentMainFactory
    }

    var body: some View {
        Group {
            switch sceneState.sceneFlow {
            case .sample:
                AnyView(sampleFactory.makeView())
                    .environmentObject(sceneState)

            case .teacherMain:
                AnyView(teacherMainFactory.makeView())
                    .environmentObject(sceneState)

            case .studentMain:
                AnyView(studentMainFactory.makeView())
                    .environmentObject(sceneState)
            }
        }
        .animation(.default, value: sceneState.sceneFlow)
    }
}

#warning("로그인 페이지 완성 시 sample -> login으로 변경")
