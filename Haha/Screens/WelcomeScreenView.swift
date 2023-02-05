//
//  WelcomeScreenView.swift
//  login
//
//
import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Text("  Get ready\n  to land\n  your next\n  dream job")
                        .font(.system(size: 40))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(Color("white"))

//                    Image(uiImage: #imageLiteral(resourceName: "onboard"))
                    Spacer()
                    
                    NavigationLink(
                        destination: SignInScreenView().navigationBarHidden(true),
                        
                        label: {
                            Text("Sign In")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("PrimaryColor"))
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                .padding(.vertical)
                        })
                        .navigationBarHidden(true)
                    
                    HStack {
                        Text("New around here? ")
                            .foregroundColor(Color("white"))
                    NavigationLink(
                        destination:
                            SignUpScreenView().navigationBarHidden(true),
                        label: {
                            Text("Sign up")
                                .foregroundColor(Color("white"))
                        })
                        .navigationBarHidden(true)
                    }
                }
                .padding()
                
            }
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
