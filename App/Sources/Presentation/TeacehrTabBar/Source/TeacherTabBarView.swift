import SwiftUI

struct TeacherTabBarView: View {
    @State var currentTab: TeacherTabFlow = .main

    private let teacherMainFactory: any TeacherMainFactory
    private let teacherScoringFactory: any TeacherScoringFactory
    private let teacherMakingFactory: any TeacherMakingFactory
    private let teacherStoreFactory: any TeacherStoreFactory
    private let teacherRankFactory: any TeacherRankFactory

    init(
        teacherMainFactory: any TeacherMainFactory,
        teacherScoringFactory: any TeacherScoringFactory,
        teacherMakingFactory: any TeacherMakingFactory,
        teacherStoreFactory: any TeacherStoreFactory,
        teacherRankFactory: any TeacherRankFactory
    ) {
        self.teacherMainFactory = teacherMainFactory
        self.teacherScoringFactory = teacherScoringFactory
        self.teacherMakingFactory = teacherMakingFactory
        self.teacherStoreFactory = teacherStoreFactory
        self.teacherRankFactory = teacherRankFactory

        UITabBar.appearance().scrollEdgeAppearance = {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = .white
            return appearance
        }()
    }

    var body: some View {
        TabView(selection: $currentTab) {
            AnyView(teacherMainFactory.makeView())
                .tag(TeacherTabFlow.main)
                .tabItem {
                    StackKnowledgeAsset.TapBar.mainPageIcon.swiftUIImage

                    Text("홈")
                        .skFont(.pr12)
                }

            AnyView(teacherScoringFactory.makeView())
                .tag(TeacherTabFlow.scoring)
                .tabItem {
                    StackKnowledgeAsset.TapBar.missionPageIcon.swiftUIImage

                    Text("채점하기")
                        .skFont(.pr12)
                }

            AnyView(teacherMakingFactory.makeView())
                .tag(TeacherTabFlow.making)
                .tabItem {
                    StackKnowledgeAsset.TapBar.makeMissionPageIcon.swiftUIImage

                    Text("만들기")
                        .skFont(.pr12)
                }

            AnyView(teacherStoreFactory.makeView())
                .tag(TeacherTabFlow.store)
                .tabItem {
                    StackKnowledgeAsset.TapBar.storePageIcon.swiftUIImage

                    Text("상점")
                        .skFont(.pr12)
                }

            AnyView(teacherRankFactory.makeView())
                .tag(TeacherTabFlow.rank)
                .tabItem {
                    StackKnowledgeAsset.TapBar.rankingPageIcon.swiftUIImage

                    Text("랭킹")
                        .skFont(.pr12)
                }
        }
        .accentColor(.black)
    }
}
