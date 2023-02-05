import SwiftUI



struct profileComplete: View {

    var body: some View {

        NavigationView{

            VStack{

                Section{

                    Text("Your profile is complete! \nLet's see your new network!")

                }

                .padding()

                Section{

                    NavigationLink(
                        destination:
                            Persona1View().navigationBarHidden(true),
                        label: {
                        Text("View your matches")

                            .frame(width:200,

                                   height: 50,

                                   alignment: .center)

                            .background(Color("Purple"))

                            .foregroundColor(Color("white"))

                            .cornerRadius(8)

                    }).navigationBarHidden(true)

                }

                Section{
                    NavigationLink(
                        destination:
                            SignUpScreenView().navigationBarHidden(true),
                        label: {
                            Text("View Profile")

                                .frame(width:200,

                                       height: 20,

                                       alignment: .center)

                                .foregroundColor(Color("Purple"))

                                .cornerRadius(8)

                        })
        
//                    Button(action:{
//
//                    },label:{
//
//                        Text("View Profile")
//
//                            .frame(width:200,
//
//                                   height: 20,
//
//                                   alignment: .center)
//
//                            .foregroundColor(Color("Purple"))
//
//                            .cornerRadius(8)
//
//                    })

                }

            }

        }

    }

    

    struct profileComplete_Previews: PreviewProvider {

        static var previews: some View {

            profileComplete()

        }

    }

    

}
