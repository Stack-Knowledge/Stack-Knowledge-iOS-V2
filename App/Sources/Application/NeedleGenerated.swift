

import NeedleFoundation
import Service
import SwiftUI

// swiftlint:disable unused_declaration
private let needleDependenciesHash: String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

    private class StudentRankDependencye04f973d7ee2e4dbf097Provider: StudentRankDependency {
        init() {}
    }

    /// ^->AppComponent->StudentRankComponent
    private func factorya207e95657dad45fc3d1e3b0c44298fc1c149afb(_: NeedleFoundation.Scope) -> AnyObject {
        return StudentRankDependencye04f973d7ee2e4dbf097Provider()
    }

    private class StudentMainDependencya9393ba8e6906aa5293fProvider: StudentMainDependency {
        init() {}
    }

    /// ^->AppComponent->StudentMainComponent
    private func factory3f302b760f5a8a5bb663e3b0c44298fc1c149afb(_: NeedleFoundation.Scope) -> AnyObject {
        return StudentMainDependencya9393ba8e6906aa5293fProvider()
    }

    private class TeacherTabBarDependency8656e2997e99edf8ea3eProvider: TeacherTabBarDependency {
        var teacherMainFactory: any TeacherMainFactory {
            return appComponent.teacherMainFactory
        }

        var teacherScoringFactory: any TeacherScoringFactory {
            return appComponent.teacherScoringFactory
        }

        var teacherMakingFactory: any TeacherMakingFactory {
            return appComponent.teacherMakingFactory
        }

        var teacherStoreFactory: any TeacherStoreFactory {
            return appComponent.teacherStoreFactory
        }

        var teacherRankFactory: any TeacherRankFactory {
            return appComponent.teacherRankFactory
        }

        private let appComponent: AppComponent
        init(appComponent: AppComponent) {
            self.appComponent = appComponent
        }
    }

    /// ^->AppComponent->TeacherTabBarComponent
    private func factoryc4bcf0b736b2cf3bd721f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
        return TeacherTabBarDependency8656e2997e99edf8ea3eProvider(appComponent: parent1(component) as! AppComponent)
    }

    private class TeacherStoreDependency8ebc6a11e888a4123541Provider: TeacherStoreDependency {
        init() {}
    }

    /// ^->AppComponent->TeacherStoreComponent
    private func factory128c5d3f23ae759e8449e3b0c44298fc1c149afb(_: NeedleFoundation.Scope) -> AnyObject {
        return TeacherStoreDependency8ebc6a11e888a4123541Provider()
    }

    private class StudentStoreDependency5d5dbb7888d5aa2cb69eProvider: StudentStoreDependency {
        init() {}
    }

    /// ^->AppComponent->StudentStoreComponent
    private func factory91eb5426241c30205ae0e3b0c44298fc1c149afb(_: NeedleFoundation.Scope) -> AnyObject {
        return StudentStoreDependency5d5dbb7888d5aa2cb69eProvider()
    }

    private class StudentMissionDependencyf378aa3a3ee2a7235988Provider: StudentMissionDependency {
        init() {}
    }

    /// ^->AppComponent->StudentMissionComponent
    private func factorye8446c8e511ead4ea62de3b0c44298fc1c149afb(_: NeedleFoundation.Scope) -> AnyObject {
        return StudentMissionDependencyf378aa3a3ee2a7235988Provider()
    }

    private class TeacherRankDependency2b0e4fc3a1e9d17dd002Provider: TeacherRankDependency {
        init() {}
    }

    /// ^->AppComponent->TeacherRankComponent
    private func factory98823a0d7e84219cc5a7e3b0c44298fc1c149afb(_: NeedleFoundation.Scope) -> AnyObject {
        return TeacherRankDependency2b0e4fc3a1e9d17dd002Provider()
    }

    private class TeacherMainDependencycb579053e8adab6534c4Provider: TeacherMainDependency {
        init() {}
    }

    /// ^->AppComponent->TeacherMainComponent
    private func factorydd9b11b5064ca2f8da24e3b0c44298fc1c149afb(_: NeedleFoundation.Scope) -> AnyObject {
        return TeacherMainDependencycb579053e8adab6534c4Provider()
    }

    private class TeacherMakingDependency00e6ba1aeb8f6b1fd077Provider: TeacherMakingDependency {
        init() {}
    }

    /// ^->AppComponent->TeacherMakingComponent
    private func factory4e9f04eeaaa95e801d04e3b0c44298fc1c149afb(_: NeedleFoundation.Scope) -> AnyObject {
        return TeacherMakingDependency00e6ba1aeb8f6b1fd077Provider()
    }

    private class SampleDependency1b18b455a8384602db39Provider: SampleDependency {
        init() {}
    }

    /// ^->AppComponent->SampleComponent
    private func factoryd2c67a11371931c5d6bfe3b0c44298fc1c149afb(_: NeedleFoundation.Scope) -> AnyObject {
        return SampleDependency1b18b455a8384602db39Provider()
    }

    private class RootDependency3944cc797a4a88956fb5Provider: RootDependency {
        var sampleFactory: any SampleFactory {
            return appComponent.sampleFactory
        }

        var teacherMainFactory: any TeacherMainFactory {
            return appComponent.teacherMainFactory
        }

        var studentMainFactory: any StudentMainFactory {
            return appComponent.studentMainFactory
        }

        private let appComponent: AppComponent
        init(appComponent: AppComponent) {
            self.appComponent = appComponent
        }
    }

    /// ^->AppComponent->RootComponent
    private func factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
        return RootDependency3944cc797a4a88956fb5Provider(appComponent: parent1(component) as! AppComponent)
    }

    private class StudentTabBarDependency271b807cc0fe76d49c72Provider: StudentTabBarDependency {
        var studentMainFactory: any StudentMainFactory {
            return appComponent.studentMainFactory
        }

        var studentMissionFactory: any StudentMissionFactory {
            return appComponent.studentMissionFactory
        }

        var studentStoreFactory: any StudentStoreFactory {
            return appComponent.studentStoreFactory
        }

        var studentRankFactory: any StudentRankFactory {
            return appComponent.studentRankFactory
        }

        private let appComponent: AppComponent
        init(appComponent: AppComponent) {
            self.appComponent = appComponent
        }
    }

    /// ^->AppComponent->StudentTabBarComponent
    private func factory8d343976abcd0092e987f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
        return StudentTabBarDependency271b807cc0fe76d49c72Provider(appComponent: parent1(component) as! AppComponent)
    }

    private class TeacherScoringDependencyf8ae6a4ff4b5d15632c8Provider: TeacherScoringDependency {
        init() {}
    }

    /// ^->AppComponent->TeacherScoringComponent
    private func factoryab28b7b4f4bc6b58976ae3b0c44298fc1c149afb(_: NeedleFoundation.Scope) -> AnyObject {
        return TeacherScoringDependencyf8ae6a4ff4b5d15632c8Provider()
    }

#else
    extension AppComponent: Registration {
        public func registerItems() {
            localTable["remoteOrderDataSource-any RemoteOrderDataSource"] = { [unowned self] in self.remoteOrderDataSource as Any }
            localTable["orderRepository-any OrderRepository"] = { [unowned self] in self.orderRepository as Any }
            localTable["orderItemUseCase-any OrderItemUseCase"] = { [unowned self] in self.orderItemUseCase as Any }
            localTable["fetchOrderedItemUseCase-any FetchOrderedItemUseCase"] = { [unowned self] in self.fetchOrderedItemUseCase as Any }
            localTable["changeItemStateUseCase-any ChangeItemStateUseCase"] = { [unowned self] in self.changeItemStateUseCase as Any }
            localTable["remoteSolveDataSource-any RemoteSolveDataSource"] = { [unowned self] in self.remoteSolveDataSource as Any }
            localTable["solveRepository-any SolveRepository"] = { [unowned self] in self.solveRepository as Any }
            localTable["solvedProblemUseCase-any SolvedProblemUseCase"] = { [unowned self] in self.solvedProblemUseCase as Any }
            localTable["remoteAuthDataSource-any RemoteAuthDataSource"] = { [unowned self] in self.remoteAuthDataSource as Any }
            localTable["authRepository-any AuthRepository"] = { [unowned self] in self.authRepository as Any }
            localTable["loginByStudentUseCase-any LoginByStudentUseCase"] = { [unowned self] in self.loginByStudentUseCase as Any }
            localTable["loginByTeacherUseCase-any LoginByTeacherUseCase"] = { [unowned self] in self.loginByTeacherUseCase as Any }
            localTable["refreshUseCase-any RefreshUseCase"] = { [unowned self] in self.refreshUseCase as Any }
            localTable["logoutUseCase-any LogoutUseCase"] = { [unowned self] in self.logoutUseCase as Any }
            localTable["remoteStudentDataSource-any RemoteStudentDataSource"] = { [unowned self] in self.remoteStudentDataSource as Any }
            localTable["studentRepository-any StudentRepository"] = { [unowned self] in self.studentRepository as Any }
            localTable["fetchPointRankingListUseCase-any FetchPointRankingListUseCase"] = { [unowned self] in self.fetchPointRankingListUseCase as Any }
            localTable["fetchMyInfoUseCase-any FetchMyInfoUseCase"] = { [unowned self] in self.fetchMyInfoUseCase as Any }
            localTable["profileImageUploadUseCase-any ProfileImageUploadUseCase"] = { [unowned self] in self.profileImageUploadUseCase as Any }
            localTable["remoteUserDataSource-any RemoteUserDataSource"] = { [unowned self] in self.remoteUserDataSource as Any }
            localTable["userRepository-any UserRepository"] = { [unowned self] in self.userRepository as Any }
            localTable["fetchSolvedProblemListUseCase-any FetchSolvedProblemListUseCase"] = { [unowned self] in self.fetchSolvedProblemListUseCase as Any }
            localTable["fetchSolvedProblemDetailUseCase-any FetchSolvedProblemDetailUseCase"] = { [unowned self] in self.fetchSolvedProblemDetailUseCase as Any }
            localTable["fetchRequestedSignupTeacherListUsecase-any FetchRequestedSignupTeacherListUseCase"] = { [unowned self] in self.fetchRequestedSignupTeacherListUsecase as Any }
            localTable["markingProblemUseCase-any MarkingProblemUseCase"] = { [unowned self] in self.markingProblemUseCase as Any }
            localTable["repliedSignupUseCase-any RepliedSignupUseCase"] = { [unowned self] in self.repliedSignupUseCase as Any }
            localTable["sampleFactory-any SampleFactory"] = { [unowned self] in self.sampleFactory as Any }
            localTable["studentMainFactory-any StudentMainFactory"] = { [unowned self] in self.studentMainFactory as Any }
            localTable["studentMissionFactory-any StudentMissionFactory"] = { [unowned self] in self.studentMissionFactory as Any }
            localTable["studentRankFactory-any StudentRankFactory"] = { [unowned self] in self.studentRankFactory as Any }
            localTable["studentStoreFactory-any StudentStoreFactory"] = { [unowned self] in self.studentStoreFactory as Any }
            localTable["studentTabBarFactory-any StudentTabBarFactory"] = { [unowned self] in self.studentTabBarFactory as Any }
            localTable["teacherMainFactory-any TeacherMainFactory"] = { [unowned self] in self.teacherMainFactory as Any }
            localTable["teacherMakingFactory-any TeacherMakingFactory"] = { [unowned self] in self.teacherMakingFactory as Any }
            localTable["teacherRankFactory-any TeacherRankFactory"] = { [unowned self] in self.teacherRankFactory as Any }
            localTable["teacherScoringFactory-any TeacherScoringFactory"] = { [unowned self] in self.teacherScoringFactory as Any }
            localTable["teacherStoreFactory-any TeacherStoreFactory"] = { [unowned self] in self.teacherStoreFactory as Any }
            localTable["teacherTabBarFactory-any TeacherTabBarFactory"] = { [unowned self] in self.teacherTabBarFactory as Any }
            localTable["remoteMissionDataSource-any RemoteMissionDataSource"] = { [unowned self] in self.remoteMissionDataSource as Any }
            localTable["missionRepository-any MissionRepository"] = { [unowned self] in self.missionRepository as Any }
            localTable["fetchAllMissionUseCase-any FetchAllMissionUseCase"] = { [unowned self] in self.fetchAllMissionUseCase as Any }
            localTable["fetchMissionDetailUseCase-any FetchMissionDetailUseCase"] = { [unowned self] in self.fetchMissionDetailUseCase as Any }
            localTable["createMissionUseCase-any CreateMissionUseCase"] = { [unowned self] in self.createMissionUseCase as Any }
            localTable["remoteItemDataSource-any RemoteItemDataSource"] = { [unowned self] in self.remoteItemDataSource as Any }
            localTable["itemRepository-any ItemRepository"] = { [unowned self] in self.itemRepository as Any }
            localTable["fetchItemListUseCase-any FetchItemListUseCase"] = { [unowned self] in self.fetchItemListUseCase as Any }
        }
    }

    extension StudentRankComponent: Registration {
        public func registerItems() {}
    }

    extension StudentMainComponent: Registration {
        public func registerItems() {}
    }

    extension TeacherTabBarComponent: Registration {
        public func registerItems() {
            keyPathToName[\TeacherTabBarDependency.teacherMainFactory] = "teacherMainFactory-any TeacherMainFactory"
            keyPathToName[\TeacherTabBarDependency.teacherScoringFactory] = "teacherScoringFactory-any TeacherScoringFactory"
            keyPathToName[\TeacherTabBarDependency.teacherMakingFactory] = "teacherMakingFactory-any TeacherMakingFactory"
            keyPathToName[\TeacherTabBarDependency.teacherStoreFactory] = "teacherStoreFactory-any TeacherStoreFactory"
            keyPathToName[\TeacherTabBarDependency.teacherRankFactory] = "teacherRankFactory-any TeacherRankFactory"
        }
    }

    extension TeacherStoreComponent: Registration {
        public func registerItems() {}
    }

    extension StudentStoreComponent: Registration {
        public func registerItems() {}
    }

    extension StudentMissionComponent: Registration {
        public func registerItems() {}
    }

    extension TeacherRankComponent: Registration {
        public func registerItems() {}
    }

    extension TeacherMainComponent: Registration {
        public func registerItems() {}
    }

    extension TeacherMakingComponent: Registration {
        public func registerItems() {}
    }

    extension SampleComponent: Registration {
        public func registerItems() {}
    }

    extension RootComponent: Registration {
        public func registerItems() {
            keyPathToName[\RootDependency.sampleFactory] = "sampleFactory-any SampleFactory"
            keyPathToName[\RootDependency.teacherMainFactory] = "teacherMainFactory-any TeacherMainFactory"
            keyPathToName[\RootDependency.studentMainFactory] = "studentMainFactory-any StudentMainFactory"
        }
    }

    extension StudentTabBarComponent: Registration {
        public func registerItems() {
            keyPathToName[\StudentTabBarDependency.studentMainFactory] = "studentMainFactory-any StudentMainFactory"
            keyPathToName[\StudentTabBarDependency.studentMissionFactory] = "studentMissionFactory-any StudentMissionFactory"
            keyPathToName[\StudentTabBarDependency.studentStoreFactory] = "studentStoreFactory-any StudentStoreFactory"
            keyPathToName[\StudentTabBarDependency.studentRankFactory] = "studentRankFactory-any StudentRankFactory"
        }
    }

    extension TeacherScoringComponent: Registration {
        public func registerItems() {}
    }

#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration

private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

    @inline(never) private func register1() {
        registerProviderFactory("^->AppComponent", factoryEmptyDependencyProvider)
        registerProviderFactory("^->AppComponent->StudentRankComponent", factorya207e95657dad45fc3d1e3b0c44298fc1c149afb)
        registerProviderFactory("^->AppComponent->StudentMainComponent", factory3f302b760f5a8a5bb663e3b0c44298fc1c149afb)
        registerProviderFactory("^->AppComponent->TeacherTabBarComponent", factoryc4bcf0b736b2cf3bd721f47b58f8f304c97af4d5)
        registerProviderFactory("^->AppComponent->TeacherStoreComponent", factory128c5d3f23ae759e8449e3b0c44298fc1c149afb)
        registerProviderFactory("^->AppComponent->StudentStoreComponent", factory91eb5426241c30205ae0e3b0c44298fc1c149afb)
        registerProviderFactory("^->AppComponent->StudentMissionComponent", factorye8446c8e511ead4ea62de3b0c44298fc1c149afb)
        registerProviderFactory("^->AppComponent->TeacherRankComponent", factory98823a0d7e84219cc5a7e3b0c44298fc1c149afb)
        registerProviderFactory("^->AppComponent->TeacherMainComponent", factorydd9b11b5064ca2f8da24e3b0c44298fc1c149afb)
        registerProviderFactory("^->AppComponent->TeacherMakingComponent", factory4e9f04eeaaa95e801d04e3b0c44298fc1c149afb)
        registerProviderFactory("^->AppComponent->SampleComponent", factoryd2c67a11371931c5d6bfe3b0c44298fc1c149afb)
        registerProviderFactory("^->AppComponent->RootComponent", factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5)
        registerProviderFactory("^->AppComponent->StudentTabBarComponent", factory8d343976abcd0092e987f47b58f8f304c97af4d5)
        registerProviderFactory("^->AppComponent->TeacherScoringComponent", factoryab28b7b4f4bc6b58976ae3b0c44298fc1c149afb)
    }
#endif

public func registerProviderFactories() {
    #if !NEEDLE_DYNAMIC
        register1()
    #endif
}
