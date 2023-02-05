//
//  lastProfileScreen.swift
//  Haha
//
//  Created by brandon on 2023/2/5.
//

import SwiftUI
import UIKit

class FormViewModel3: ObservableObject {
    @State var answer = ""
    @State var lastName = ""
    @State var companyName = ""
    @State var jobPosition = ""
}

struct lastProfileScreen: View {
    @StateObject var viewModel3 = FormViewModel3()
    var body: some View {
        
        NavigationView{
            
            VStack{
                Image("slider3")
                    .resizable()
                    .scaledToFit()

                Form{
                    Section(header: Text("Choose a Prompt")){
                        GroupBox {
                            DisclosureGroup("Prompts") {
                                Text("What are your 2023 goals?")
                                Text("What would you tell your younger self?")
                                Text("What is a challenge you faced?")
                            }
                        }
                        TextField("write your answer here", text: $viewModel3.answer)
                        
                    }
                    Section(header: Text("Choose a 2nd Prompt")){
                        GroupBox {
                            DisclosureGroup("Prompts") {
                                Text("What is something you are proud of? ")
                                Text("What is something you're learning right now?")
                                Text("Who's your favorite author?")
                            }
                        }
                        TextField("write your answer here", text: $viewModel3.answer)
                        
                    }
                    
                    }
            
                    Section{
                        NavigationLink(
                            destination:
                                profileComplete().navigationBarHidden(true)
                            ,label:{
                            Text("Continue")
                                .frame(width:200,
                                       height: 50,
                                       alignment: .center)
                                .background(Color("Purple"))
                                .foregroundColor(Color("white"))
                                .cornerRadius(8)
                        })
                    }
                }
                .navigationTitle("Personal")
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity) // 1
                .background(Color("background"))

            
            }

        }
    }
    
    
struct lastProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        lastProfileScreen()
    }
    
}
