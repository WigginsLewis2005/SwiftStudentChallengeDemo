import SwiftUI

struct ContentView: View {
   
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {

                        NavigationLink(destination: TeacherHomePage()) {
                            ZStack {
                                
                                Image("BookWall")
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 1, height: 1)
                                    .opacity(0.4)
                                
                                Text ("""
                                          Inventory At A Glance!
                                          Welcome
                                          """
                                )
                                    .padding()
                                    .background(Color(.green))
                                    .foregroundColor(.white)
                                    .font(.custom("", fixedSize: 40))
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding()
                               

                            }
                            
                        }
                    
                        
                        
                    }
                }
//}
    }

//Struct TeacherHomePage: struct some: View {
//    var body: some View {
//        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
   }
}

//#Preview {
//    some()
//}
#Preview {
    ContentView()
}
