import SwiftUI
import Charts

struct InventoryAllBooks: View {
//    @AppStorage (("LearnWorkbookTotal)")
    
    @State private var NumberOfSucceedBooks = 2
    @State private var NumberOfPracticeBooks = 4
    @State private var NumberOfLearnBooks = 6

    var body: some View {
        NavigationStack {
            //            Text("Hello,World")
            VStack {
                Image("Volunteers taking inventory")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                
                Chart {
                    BarMark(
                        //                        Image{
                        //                            ("capsule")
                        x: .value("Name", "Learn"),
                        y: .value("Sales", NumberOfLearnBooks) 
                    )   
                    .foregroundStyle(.green)
                    
                    BarMark(
                        x: .value("Name", "Practice"),
                        y: .value("Sales", NumberOfPracticeBooks)
                    )
                    .foregroundStyle(.blue)
                    BarMark(
                        x: .value("Name", "Succeed"),
                        y: .value("Sales", NumberOfSucceedBooks)
                    )
                    .foregroundStyle(.brown)
                    
                }
                .padding()
                VStack  {    
                    NavigationLink(destination: LearnWorkbookTotal(NumberOfLearnBooks: $NumberOfLearnBooks)) {
                        Text("Learn")
                            .padding()
                            .background(Color(.green))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                        NavigationLink(destination: PracticeWorkbookTotal(NumberOfPracticeBooks: $NumberOfPracticeBooks)) {
                            Text("Practice")
                                .padding()
                                .background(Color(.blue))
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                            NavigationLink(destination: SucceedWorkbookTotal(NumberOfSucceedBooks: $NumberOfSucceedBooks)) {
                                Text("Succeed")
                                    .padding()
                                    .background(Color(.brown))
                                    .foregroundColor(.white)
                                    .clipShape(Capsule())
                                
                                //                            }}}
                                //                    HStack {
                                //                        
                                //                        VStack {
                                //                            HStack {
                                //                                Button {
                                //                                    NumberOfSuccedBooks += 5
                                //                                }                            
                                //                                
                                //                            label: {
                                //                                Text ("Add 1 Succeed WorkBook")
                                //                            }
                                //                            .padding()
                                //                            .background(Color(.yellow))
                                //                            .foregroundColor(.white)
                                //                            .clipShape(Capsule())
                                //                                
                                //                                Button {
                                //                                    NumberOfSuccedBooks -= 1
                                //                                }
                                //                            label: {
                                //                                Text ("Subtract 1 Succeed WorkBook")
                                //                            
                                //                            }
                                //                            .padding()
                                //                            .background(Color(.yellow))
                                //                            .foregroundColor(.white)
                                //                            .clipShape(Capsule())
                                //                                
                                //                            }
                                //                            HStack {
                                //                                Button {
                                //                                    NumberOfPracticeBooks += 5
                                //                                }
                                //                            label: {
                                //                                Text ("Add 1 Practice WorkBook")
                                //                            }
                                //                            .padding()
                                //                            .background(Color(.blue))
                                //                            .foregroundColor(.white)
                                //                            .clipShape(Capsule())
                                //                                Button {
                                //                                    NumberOfPracticeBooks -= 1
                                //                                }
                                //                            label: {
                                //                                Text ("Subtract 1 Practice WorkBook")
                                //                            }
                                //                            .padding()
                                //                            .background(Color(.blue))
                                //                            .foregroundColor(.white)
                                //                            .clipShape(Capsule())
                                //                            }
                                //                            HStack {
                                //                                Button {
                                //                                    NumberOfLearnBooks += 5
                                //                                }
                                //                            label: {
                                //                                Text ("Add 1 Learn WorkBook")
                                //                            }
                                //                            .padding()
                                //                            .background(Color(.blue))
                                //                            .foregroundColor(.white)
                                //                            .clipShape(Capsule())
                                //                                Button {
                                //                                    NumberOfLearnBooks -= 1
                                //                                }
                                //                            label: {
                                //                                Text ("Subtract 1 Practice WorkBook")
                                //                            }
                                //                            .padding()
                                //                            .background(Color(.blue))
                                //                            .foregroundColor(.white)
                                //                            .clipShape(Capsule())
                                //                            }
                                //                        }
                                //                                        }
                                //                          }
                            }
                        }
                        
                    }    
                    
                }
                //    }
                //  
            }
            
//            struct ChartNumberButton: View {
//                @State private var showingAddUser = false
                
//                var body: some View {
//                    VStack {
//                    }
//                    .sheet(isPresented: $showingAddUser) {
//                    }
//                    
//                    
//                }
//                //            }
//            }
            
//            struct AddView: View {
//                @State private var showingAddUser = false
//                @Binding var isPresented: Bool
//                var body: some View {
//                    Button ("Dismiss") {
//                        isPresented = false
//                    }
                    
//                    .sheet(isPresented: $showingAddUser) {
//                        AddView(isPresented: $showingAddUser)
                        
                    }
                    
                }
            }
//        }
//    }
//}
#Preview {
    InventoryAllBooks()
            
        }
    

