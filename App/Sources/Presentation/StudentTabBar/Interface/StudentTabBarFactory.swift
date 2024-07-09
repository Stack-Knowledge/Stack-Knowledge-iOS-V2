import SwiftUI

public protocol StudentTabBarFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
