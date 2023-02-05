import SwiftUI
import UIKit

class FormViewModel2: ObservableObject {
    @State var school = ""
    @State var degree = ""
    @State var gradDate = ""
    @State var major = ""
    @State var minor = ""
}

struct profile1: View {
    @StateObject var viewModel2 = FormViewModel2()
    var body: some View {
        NavigationView {
            VStack {
                Image("slider2")
                    .resizable()
                    .scaledToFit()
                Form {
                    Section(header: Text("School Name")){
                        TextField("eg: University of Southern California", text: $viewModel2.school)
                    }
                    Section(header: Text("Degree")){
                        TextField("eg: bachelor's", text: $viewModel2.degree)
                    }
                    Section(header: Text("Graduation Date")){
                        TextField("Job Title", text: $viewModel2.gradDate)
                    }
                    Section(header: Text("Major")){
                        TextField("Major", text: $viewModel2.major)
                    }
                    Section(header: Text("Minor")){
                        TextField("Minor", text: $viewModel2.minor)
                    }
                }

                Section {
                    NavigationLink(
                        destination:
                            lastProfileScreen().navigationBarHidden(true),
                        label: {
                        Text("Continue")
                            .frame(width:200, height: 50, alignment: .center)
                            .background(Color("Purple"))
                            .foregroundColor(Color("white"))
                            .cornerRadius(8)
                    })
                }
            }
            .navigationTitle("Education")
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("background"))
        }
    }
}

struct Previews_Content2_Previews: PreviewProvider {
    static var previews: some View {
        profile1()
    }
}
