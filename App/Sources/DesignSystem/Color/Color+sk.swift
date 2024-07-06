import SwiftUI

public extension Color {
    enum SKColorSystem {
        case main(Main)
        case gray(Gray)
        case medal(Medal)
    }

    static func sk(_ style: SKColorSystem) -> Color {
        switch style {
        case let .main(colorable as SKColorable),
            let .gray(colorable as SKColorable),
            let .medal(colorable as SKColorable):
            return colorable.color
        }
    }
}
