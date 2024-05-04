import Foundation

public struct RefreshUseCaseImpl: RefreshUseCase {
    private let authRepository: any AuthRepository

    public init(authRepository: any AuthRepository) {
        self.authRepository = authRepository
    }

    public func callAsFunction() async throws {
        try await authRepository.refresh()
    }
}
