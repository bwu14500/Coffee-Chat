//
//  SignInScreenView.swift
//  login
//
//  Created by Abu Anwar MD Abdullah on 23/4/21.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var username = ""
        @State private var password = ""
        @State private var wrongUsername = 0
        @State private var wrongPassword = 0
        //initialize the showing login screen as false
        //because we need to build the login screen UI
        @State private var showingLoginScreen = false
        
        //design the UI
        
        var body: some View {
            
            //we want to hide navigation bar and leave it blank
            
            NavigationView{
                //give UI some nice background
                ZStack{
                    Color("BgColor").edgesIgnoringSafeArea(.all)
                    VStack{
                        Text("Sign In")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        //username filling-in blank
                        //binding type of username attribute
                        TextField("Enter Your email", text: $username)
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
                        
                    
                        NavigationLink(
                            destination:
                                Persona1View().navigationBarHidden(true),

                            label: {
                                PrimaryButton(title: "Login")
                                    .padding(.vertical)
                                    .frame(width:300)

                            })
                            .navigationBarHidden(true)
                        
                    }
                    
                }
                .navigationBarHidden(true)

            }
        
        }
        //create the Authenticate user function
        //use lowercased() to ignore cases(prevent case sensitive)
        func authenticateUser(username: String, password: String){
            //username check
            if username.lowercased() == "krystalzhang612" {
                //correct+authenticated username, set wrongUsername to 0
                wrongUsername = 0
                //password check
                if password.lowercased() == "abc123"{
                    wrongPassword = 0
                    //both username and password are correct and authenticated
                    //show user the login screen
                    showingLoginScreen = true
                }
                else{
                    //wrong password
                    //set wrongPassword = 2 to show red-warning in text field
                    wrongPassword = 2
                }
            }
            else{
                //wrong username
                //set wrongUsername = 2 to show red-warning in text field
                wrongUsername = 2
            }

        }
        
        //to make this authentication function work
        //we need to insert/call this inside the Button
}

struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}
