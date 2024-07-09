import NeedleFoundation
import SwiftUI

public protocol StudentMissionDependency: Dependency {}

public final class StudentMissionComponent: Component<StudentMissionDependency>, StudentMissionFactory {
    public func makeView() -> some View {
        StudentMissionView()
    }
}
