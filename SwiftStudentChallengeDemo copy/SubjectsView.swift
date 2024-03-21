import SwiftUI

struct SubjectsView: View {
    var body: some View {
        NavigationView {
        VStack {
            Image(systemName: "books.vertical")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .font(.largeTitle)
                .colorMultiply(.white)
            Text("List of Subjects")
                .foregroundColor(.accentColor)
                .font(.largeTitle)
            VStack {
                
                NavigationLink(destination: InventoryAllBooks()) {
                    VStack {
                        Text("Math")
                            .foregroundColor(.accentColor)
                            .font(.custom("", fixedSize: 40))
                            .colorMultiply(.blue)
//                            .foregroundColor(.accentColor)
//                            .font(.largeTitle.bold())
                    
                                //                    Text("Math")
                                //                        .font(.largeTitle)
                                //                        .colorMultiply(.black)
                    VStack {       
                                Text("Science")
                                    .foregroundColor(.accentColor)
                                    .font(.largeTitle)
                                Text("ELA")
                                    .foregroundColor(.accentColor)
                                    .font(.largeTitle)
                                Text("Social Studies")
                                    .foregroundColor(.accentColor)
                                    .font(.largeTitle)
                                Text("Physical Education")
                                    .foregroundColor(.accentColor)
                                    .font(.largeTitle)
                                Text("Art")
                                    .foregroundColor(.accentColor)
                                    .font(.largeTitle)
                            }  
                        }       
                    }    
                }
            }
        }
    }
}
#Preview {
    SubjectsView()
}


