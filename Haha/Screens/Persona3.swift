

import SwiftUI


struct Persona3View : View {
    
    @State var color = 0
    @State var height = UIScreen.main.bounds.height
    @State var width = UIScreen.main.bounds.width
    
    
    var body: some View{
        NavigationView{
            VStack{
                
                ZStack(alignment: .top){
                    
                    VStack{
                        
                        Image("p2")
                        
                            .resizable()
                            .frame(width: 250, height: 250)
                            .clipShape(Circle())
                            .padding(.bottom, -70)
                            .frame(height: 300)
                        
                        
                        HStack(spacing: 20){
                            
                            Button(action: {
                                
                                self.color = 0
                                
                            }) {
                                
                                
                            }
                            
                            Button(action: {
                                
                                self.color = 1
                                
                            }) {
                                
                                
                            }
                        }
                        .padding(.top, 15)
                        .padding(.bottom, 10)
                    }
                    
                    HStack{
                        
                        Button(action: {
                            
                        }) {
                            
                            Image("back")
                                .renderingMode(.original)
                                .padding()
                        }
                        .padding(.leading, 10)
                        .padding(.top, 20)
                        
                        Spacer()
                        
                        
                        
                            .background(Color.white)
                            .clipShape(CustomShape(corner: .bottomLeft, radii: self.height > 800 ? 35 : 30))
                    }
                    
                }
                .background(Color("Color2"))
                .clipShape(CustomShape(corner: .bottomLeft, radii: 55))
                
                ScrollView(self.height > 800 ? .init() : .vertical, showsIndicators: false) {
                    
                    VStack{
                        
                        HStack{
                            
                            
                            
                            if #available(iOS 14.0, *) {
                                Link(destination: URL(string: "https://www.linkedin.com/in/tannvi-banerjee/")!, label: {
                                    
                                    Text("Teresa Williams")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                })
                            } else {
                                Text("Teresa Williams")
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            
                            
                            
                            Spacer()
                            
                            Button(action: {
                                
                            }) {
                                
                                Image("heart")
                                    .renderingMode(.original)
                                    .padding()
                            }
                            .background(Color("Color2"))
                            .clipShape(Circle())
                            
                        }
                        .padding(.horizontal, 35)
                        .padding(.top,25)
                        
                        
                        Text("MS in CS @ Rice, currently investing @ Kleiner Perkins. Excited about tech innovation within early education systems. Love teaching and mentoring younger students.")
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                            .padding(.horizontal, 30)
                            .padding(.top,20)
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                        }) {
                            
                            VStack{
                                
                                
                                
                                Text("My 2023 goal is to")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .padding(.leading, -150)
                                    .font(.system(size: 15.5))
                                
                                Text("Travelling more")
                                    .foregroundColor(.black)
                                    .padding(.leading, -122)
                                    .font(.system(size: 28))
                            }
                            .frame(width: 300, height: 40)
                            .padding()
                            
                        }
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                        
                        
                        HStack(spacing: 10){
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack{
                                    
                                    Image("mat1")
                                        .renderingMode(.original)
                                    
                                    Text("Coding")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                }
                                .padding()
                            }
                            .background(Color.black.opacity(0.06))
                            .cornerRadius(12)
                            
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack{
                                    
                                    Image("mat3")
                                        .renderingMode(.original)
                                    
                                    Text("Creating")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                }
                                .padding()
                            }
                            .background(Color.black.opacity(0.06))
                            .cornerRadius(12)
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack{
                                    
                                    Image("mat4")
                                        .renderingMode(.original)
                                    
                                    Text("Running")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                }
                                .padding()
                            }
                            .background(Color.black.opacity(0.06))
                            .cornerRadius(12)
                        }
                        .padding(.top, 20)
                        .padding(.bottom, 25)
                        
                        Spacer(minLength: 0)
                    }
                }
                
                HStack{
                    
                    NavigationLink(
                        destination:
                            Persona4View().navigationBarHidden(true),
                        label: {
                            
                            Text("Move on")
                                .foregroundColor(.black)
                                .padding(.vertical, 20)
                                .padding(.horizontal, 35)
                                .background(Color("Color"))
                                .clipShape(CustomShape(corner: .topRight, radii: 55))
                        })
                    
                    Spacer()
                    
                    NavigationLink(
                        destination:
                            ChatView().navigationBarHidden(true),
                        label: {
                        
                        Text("Message")
                            .foregroundColor(.black)
                            .padding(.vertical, 20)
                            .padding(.horizontal, 35)
                            .background(Color("Color2"))
                            .clipShape(CustomShape(corner: .topLeft, radii: 55))
                        })
                    
                }
            }
            .edgesIgnoringSafeArea(.all)
            .statusBar(hidden: true)
            .animation(.default)
        }
    }
}


struct CustomShape : Shape {
    
    var corner : UIRectCorner
    var radii : CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
        
        return Path(path.cgPath)
    }
}



struct Persona3View_Previews: PreviewProvider {
    static var previews: some View {
        Persona3View()
    }
}
