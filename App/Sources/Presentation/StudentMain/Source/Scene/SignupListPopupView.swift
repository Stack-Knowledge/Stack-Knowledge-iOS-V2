import SwiftUI

struct SignupListPopupView: View {
    @StateObject var studentMainContainer: MVIContainer<StudentMainIntent, StudentMainModelStateProtocol>
    
    @Binding var showPopUp: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    showPopUp = false
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                        .padding()
                }
            }
            .frame(height: 50)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    ForEach(1..<4) { index in
                        VStack {
                            HStack(spacing: 10) {
                                Spacer()
                                    
                                Text(studentMainContainer.model.listName)
                                    .skFont(.pm16)
                                
                                Text("-")
                                
                                Text(studentMainContainer.model.listRequestDate)
                                    .skFont(.pm16)
                                
                                Button {
                                    //회원가입 수락 동작 필요.
                                } label: {
                                    Text("수락")
                                        .frame(width: 45, height: 21)
                                        .background(Color.SKColorSystem.Main.mainColor.color)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(2)
                                }

                                Button {
                                    //회원가입 거절 동작 필요.
                                } label: {
                                    Text("거절")
                                        .frame(width: 45, height: 21)
                                        .background(Color.SKColorSystem.Main.mainColor.color)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(2)
                                }
                            }
                        }
                        .frame(width: 270, height: 50)
                    }
                }
            }
            .frame(width: 270, height: 245)
            
            Spacer()
        }
        .frame(width: 328, height: 345)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
        .padding()
    }
}
