import SwiftUI

@main
struct StackKnowledgeApp: App {
    @StateObject private var sceneState = SceneState(sceneFlow: .sample)

    init() {
        registerProviderFactories()
    }

    var body: some Scene {
        WindowGroup {
            AppComponent().makeRootView()
                .environmentObject(sceneState)
        }
    }
}
