import Foundation

final class StudentMainModel: ObservableObject, StudentMainModelStateProtocol {
    @Published var tester: String = ""
    @Published var subtitle: String = ""
    @Published var price: String = ""
    @Published var profileName: String = ""
    @Published var skPoint: String = ""
}
