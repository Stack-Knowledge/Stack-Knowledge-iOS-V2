import SwiftUI

public struct SKBaseProfileImage: View {
    public enum Image {
        case BaseProfileImage
    }

    private var image: Image
    private var renderingMode: SwiftUI.Image.TemplateRenderingMode

    public init(
        _ image: Image,
        renderingMode: SwiftUI.Image.TemplateRenderingMode = .original
    ) {
        self.image = image
        self.renderingMode = renderingMode
    }

    public var body: some View {
        skImageToImage()
            .resizable()
            .renderingMode(renderingMode)
    }

    private func skImageToImage() -> SwiftUI.Image {
        switch image {
        case .BaseProfileImage:
            return StackKnowledgeAsset.BaseProfile.baseProfileImage.swiftUIImage
        }
    }
}
