//
//  ContentView.swift
//  Profile
//
//  Created by Kezia Leung on 2/4/23.
//

import SwiftUI
import UIKit


class FormViewModel: ObservableObject {
    @State var firstName = ""
    @State var lastName = ""
    @State var companyName = ""
    @State var jobPosition = ""
}

struct profile2: View {
    @StateObject var viewModel = FormViewModel()
    var body: some View {
        
        NavigationView{
            
            VStack{
                Image("slider1")
                    .resizable()
                    .scaledToFit()

                Form{
                    Section(header: Text("First and Last Name")){
                        TextField("First Name", text: $viewModel.firstName)
                        TextField("First Name", text: $viewModel.firstName)
                        
                    }
                    Section(header: Text("Company Name")){
                        TextField("Company Name", text: $viewModel.companyName)
                    }
                    Section(header: Text("Job Position")){
                        TextField("Job Title", text: $viewModel.jobPosition)
                        
                    }
                }
                    Section{
                        NavigationLink(
                            destination:
                                profile1().navigationBarHidden(true),
                            label:{
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
                .navigationTitle("Occupation")
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity) // 1
                .background(Color("background"))

            
            }

        }
    }
    
    
struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        profile2()
    }
    
}
