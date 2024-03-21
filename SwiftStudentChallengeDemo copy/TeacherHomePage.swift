import SwiftUI

struct TeacherHomePage: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Main Page")
                    .foregroundColor(.accentColor)
                    .font(.largeTitle.bold())
                    .padding()
                Image("Linda")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.accentColor)
//                    .font(.largeTitle)
                Text("Math Master Teacher")
                    .foregroundColor(.accentColor)
                    .font(.largeTitle.bold())
                    .padding()
                    .padding()
                Spacer()
                NavigationLink(destination: SubjectsView()) {
                   HStack {
                        VStack {
                            Image(systemName: "books.vertical")
                                .font(.largeTitle)
                                .colorMultiply(.white)
                            Text("List of Subjects")
                                .foregroundColor(.accentColor)
                                .font(.largeTitle)
//                             .padding()
                            
                            Spacer()
//                                .padding()
//                            NavigationLink(destination: GradeLevelView()) {
//                                        VStack {
//                                            Image(systemName: "person.3")
//                                                .font(.largeTitle)
//                                                .colorMultiply(.black)
//                                            Text("Grade Levels")
//                                        .padding()
                                    //                        Image(systemName: "books.vertical")
                                    //                            .imageScale(.large)
                                    //                            .foregroundColor(.accentColor)
                                    //                            .font(.largeTitle)
                                    //                        Text("List of Subjects")
                                        .foregroundColor(.accentColor)
                                        .font(.largeTitle)
                                            Spacer()
                                    //            Button {Image(systemName:"person.3")
                                    //                
                                    //            }
                                    
                                    //                   
                                    //            HStack {
                                    //                NavigationLink(destination: ("ListOfSubjects"()) {
                                    //                    VStack {
                                    //                        Image(systemName: ("books.vertical")
                                    ////                            .resizable()
                                    //                            .aspectRatio(contentMode: .fit)
                                    //                            .frame(width: 1, height: 1)
                                    //                        Text("List of Subjects")
                                    //                    }
                                    //                }            
                                    //                
                                                }
                                }
                            }           
                            }
                        }
                    }
//                }
//            }
//       }
//    }
}
            #Preview {
                TeacherHomePage()
            }
        
