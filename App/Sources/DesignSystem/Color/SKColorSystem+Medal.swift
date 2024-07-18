import SwiftUI

public extension Color.SKColorSystem {
    // swiftlint:disable identifier_name
    enum Medal: SKColorable {
        case firstplace
        case secondplace
        case thirdplace
    }
}

public extension Color.SKColorSystem.Medal {
    var color: Color {
        switch self {
        case .firstplace: return StackKnowledgeAsset.Medal.firstPlace.swiftUIColor
        case .secondplace: return StackKnowledgeAsset.Medal.secondPlace.swiftUIColor
        case .thirdplace: return StackKnowledgeAsset.Medal.thirdPlace.swiftUIColor
        }
    }
}
