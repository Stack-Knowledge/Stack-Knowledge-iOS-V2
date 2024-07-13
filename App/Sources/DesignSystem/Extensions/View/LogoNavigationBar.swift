import SwiftUI

struct LogoNavigationBarModifier: ViewModifier {
    
    var logo: Image = Image(asset: StackKnowledgeAsset.Logo.logoIcon)
    var title: String = "Stack Knowledge"
    
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    HStack {
                        logo
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                        Spacer()
                            .frame(width: 10)
                        
                        Text(title)
                            .skFont(.r18)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                        // logout 동작 필요.
                        
                    }) {
                        Image(asset: StackKnowledgeAsset.Logout.logoutIcon)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                            .foregroundColor(.primary)
                    }
                }
            }
    }
}

public extension View {
    func logoNavigationBar() -> some View {
        self.modifier(LogoNavigationBarModifier())
    }
}
