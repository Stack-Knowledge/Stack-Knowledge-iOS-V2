import NeedleFoundation
import SwiftUI

public protocol StudentStoreDependency: Dependency {}

public final class StudentStoreComponent: Component<StudentStoreDependency>, StudentStoreFactory {
    public func makeView() -> some View {
        StudentStoreView()
    }
}
