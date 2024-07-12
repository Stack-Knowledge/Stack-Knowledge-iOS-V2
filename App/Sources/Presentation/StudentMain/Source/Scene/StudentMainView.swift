import SwiftUI
import PopupView

struct StudentMainView: View {
    @StateObject var studentMainContainer: MVIContainer<StudentMainIntent, StudentMainModelStateProtocol>
    
    @State private var showPopUp = false
    
    @State private var currentIndex = 0
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationView {
            VStack {
                TabView(selection: $currentIndex) {
                    SKBannerImage(.Banner1)
                        .tag(0)
                    
                    SKBannerImage(.Banner2)
                        .tag(1)
                    
                    SKBannerImage(.Banner3)
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .automatic))
                .frame(height: 180)
                .onReceive(timer) { _ in
                    withAnimation {
                        currentIndex = (currentIndex + 1) % 3
                    }
                }
                
                Text("* 문제는 12:30 ~ 19:30분까지 풀수 있습니다.")
                    .skFont(.pr12)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 16)
                
                Text("문제 풀기")
                    .skFont(.ps18)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 15)
                    .padding(.leading, 16)
                
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(1..<7) {_ in
                                VStack {
                                    Text(studentMainContainer.model.tester)
                                        .skFont(.pm14)
                                        .multilineTextAlignment(.center)
                                        .padding(.top, 16)
                                    
                                    Text(studentMainContainer.model.subtitle)
                                        .skFont(.pr12)
                                        .multilineTextAlignment(.center)
                                        .lineLimit(3)
                                        .padding(.top, 16)
                                        .padding(.horizontal, 16)
                                    
                                    Spacer()
                                    
                                    Text(studentMainContainer.model.price)
                                        .skFont(.pm16)
                                        .multilineTextAlignment(.center)
                                        .padding(.bottom, 24)
                                }
                                .padding(.init(top: 18, leading: 35, bottom: 18, trailing: 35))
                                .background(Color.white)
                                .cornerRadius(10)
                                .frame(height: 158)
                            }
                        }
                    }
                    .padding(.vertical, 16)
                    .padding(.horizontal, 16)
                    .background(Color.SKColorSystem.Gray.lightgray1.color)
                    .cornerRadius(20)
                }
                .padding(.top, 8)
                .padding(.horizontal, 16)
                
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(1..<4) { ranking in
                                ZStack(alignment: .topLeading) {
                                    VStack() {
                                        AsyncImage(url: URL(string: studentMainContainer.model.profileImageURL))
                                            .frame(width: 60, height: 60)
                                            .clipShape(Circle())
                                            .clipped()
                                        
                                        Text(studentMainContainer.model.profileName)
                                            .skFont(.pm14)
                                        
                                        Spacer().frame(height: 16)
                                        
                                        Text(studentMainContainer.model.skPoint)
                                            .skFont(.pm16)
                                    }
                                    .padding(.init(top: 25, leading: 25, bottom: 25, trailing: 25))
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .frame(height: 158)
                                    
                                    
                                    if ranking == 1 {
                                        Circle()
                                            .frame(width: 20, height: 20)
                                            .foregroundColor(Color.SKColorSystem.Medal.firstplace.color)
                                            .overlay(
                                                Text("1")
                                                    .skFont(.pm14)
                                            )
                                    }
                                    else if ranking == 2 {
                                        Circle()
                                            .frame(width: 20, height: 20)
                                            .foregroundColor(Color.SKColorSystem.Medal.secondplace.color)
                                            .overlay(
                                                Text("2")
                                                    .skFont(.pm14)
                                            )
                                    }
                                    else if ranking == 3 {
                                        Circle()
                                            .frame(width: 20, height: 20)
                                            .foregroundColor(Color.SKColorSystem.Medal.thirdplace.color)
                                            .overlay(
                                                Text("3")
                                                    .skFont(.pm14)
                                            )
                                    }
                                }
                            }
                        }
                    }
                    .padding(.vertical, 16)
                    .padding(.horizontal, 16)
                    .background(Color.SKColorSystem.Gray.lightgray1.color)
                    .cornerRadius(20)
                }
                .padding(.top, 10)
                .padding(.horizontal, 16)
                
                .logoNavigationBar()
            }
            .overlay(
                Button(action: {
                    showPopUp = true
                }) {
                    Image(systemName: "person.2")
                        .resizable()
                        .foregroundColor(.white)
                        .padding(16)
                        .background(Circle().fill(Color.SKColorSystem.Main.mainColor.color))
                        .frame(width: 60, height: 60)
                }
                    .padding(.trailing, 30)
                    .padding(.bottom, 74),
                alignment: .bottomTrailing
            )
            .popup(isPresented: $showPopUp) {
                SignupListPopupView(studentMainContainer: studentMainContainer, showPopUp: $showPopUp)
            } customize: {
                $0
                    .type(.default)
                    .position(.center)
                    .animation(.spring())
                    .closeOnTapOutside(false)
                    .closeOnTap(false)
            }
        }
    }
}
