//
//  SignInScreenView.swift
//  login
//
//  Created by Abu Anwar MD Abdullah on 23/4/21.
//

import SwiftUI

struct SignUpScreenView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmpassword: String = ""
    var body: some View {
        NavigationView{
            
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    
                    VStack {
                        
                        Text("Sign Up")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                        HStack {
                            
                            TextField("First Name", text: $firstName)
                                .font(.title3)
                                .padding()
                                .background(Color.white.opacity(0.8))
                                .cornerRadius(10.0)
                                .frame(width: 140, height: 50)
                                .padding(.horizontal)
                            TextField("Last Name", text: $lastName)
                                .font(.title3)
                                .padding()
                                .background(Color.white.opacity(0.8))
                                .cornerRadius(10.0)
                                .frame(width: 140, height: 50)
                                .padding(.horizontal)
                        }
                        
                        
                        
                        TextField("Enter Your email", text: $email)
                            .padding()
                            .frame(width: 330, height: 50)
                            .background(Color.white.opacity(0.8))
                        //corner radius to make text field shape looks nice
                            .cornerRadius(10)
                            .padding(.vertical)
                        
                        
                        SecureField("Enter Your Password", text: $password)
                            .padding()
                            .cornerRadius(50.0)
                            .frame(width: 330, height: 50)
                            .background(Color.white.opacity(0.8))
                        //corner radius to make text field shape looks nice
                            .cornerRadius(10)
                        
                        
                        SecureField("Confirm Password", text: $confirmpassword)
                            .padding()
                            .cornerRadius(50.0)
                            .frame(width: 330, height: 50)
                            .background(Color.white.opacity(0.8))
                        //corner radius to make text field shape looks nice
                            .cornerRadius(10)
                            .padding(.vertical)
                        
                        
                        
                        NavigationLink(
                            destination:
                                profile2().navigationBarHidden(true),
                            
                            label: {
                                PrimaryButton(title: "Sign Up")
                                    .padding(.vertical)
                                
                            })
                        .navigationBarHidden(true)
                        
                    }
                    
                    Spacer()
                    Divider()
                    Spacer()
                    Text("You are completely safe.")
                    Text("Read our Terms & Conditions.")
                    Spacer()
                    
                }
                .padding()
            }
        }
    }
}

struct SignUpScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreenView()
    }
}


struct SocalSignupButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
    }
}
