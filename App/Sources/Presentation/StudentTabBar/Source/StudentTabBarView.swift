import SwiftUI

struct StudentTabBarView: View {
    @State var currentTab: StudentTabFlow = .main

    private let studentMainFactory: any StudentMainFactory
    private let studentMissionFactory: any StudentMissionFactory
    private let studentStoreFactory: any StudentStoreFactory
    private let studentRankFactory: any StudentRankFactory

    init(
        studentMainFactory: any StudentMainFactory,
        studentMissionFactory: any StudentMissionFactory,
        studentStoreFactory: any StudentStoreFactory,
        studentRankFactory: any StudentRankFactory
    ) {
        self.studentMainFactory = studentMainFactory
        self.studentMissionFactory = studentMissionFactory
        self.studentStoreFactory = studentStoreFactory
        self.studentRankFactory = studentRankFactory

        UITabBar.appearance().scrollEdgeAppearance = {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = .white
            return appearance
        }()
    }

    var body: some View {
        TabView(selection: $currentTab) {
            AnyView(studentMainFactory.makeView())
                .tag(StudentTabFlow.main)
                .tabItem {
                    StackKnowledgeAsset.TapBar.mainPageIcon.swiftUIImage

                    Text("홈")
                        .skFont(.pr12)
                }

            AnyView(studentMissionFactory.makeView())
                .tag(StudentTabFlow.mission)
                .tabItem {
                    StackKnowledgeAsset.TapBar.missionPageIcon.swiftUIImage

                    Text("문제")
                        .skFont(.pr12)
                }

            AnyView(studentStoreFactory.makeView())
                .tag(StudentTabFlow.store)
                .tabItem {
                    StackKnowledgeAsset.TapBar.storePageIcon.swiftUIImage

                    Text("상점")
                        .skFont(.pr12)
                }

            AnyView(studentRankFactory.makeView())
                .tag(StudentTabFlow.rank)
                .tabItem {
                    StackKnowledgeAsset.TapBar.rankingPageIcon.swiftUIImage

                    Text("랭킹")
                        .skFont(.pr12)
                }
        }
        .accentColor(.black)
    }
}
