import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    static let NeedleFoundation = TargetDependency.external(name: "NeedleFoundation")
    static let Alamofire = TargetDependency.external(name: "Alamofire")
    static let PopupView = TargetDependency.external(name: "PopupView")
}

public extension Package {}
