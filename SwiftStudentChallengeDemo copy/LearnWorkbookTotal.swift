import SwiftUI
import Charts



struct LearnWorkbookTotal: View {
//    @AppStorage (("LearnWorkbookTotal"))

    @Binding var NumberOfLearnBooks: Int
    
    var body: some View {   
//        
        VStack {
            Image("picture of books")
                        .resizable()
            .aspectRatio(contentMode: .fit).frame(width: 1000, height: 300)
//                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .padding()
            
            Chart {  
                BarMark(
                    x: .value("Name", "Learn"),
                    y: .value("Sales", NumberOfLearnBooks)
                )
                .foregroundStyle(.green)
            }   

            HStack {
                                                Button {
                                                    NumberOfLearnBooks  += 1
                                                }                            
                                                
                                            label: {
                                                Text ("Add 1 Learn WorkBook")
                                            }
                                            .padding()
                                            .background(Color(.green))
                                            .foregroundColor(.white)
                                            .clipShape(Capsule())
                                                
                                                Button {
                                                    NumberOfLearnBooks  -= 1
                                                }
                                            label: {
                                                Text ("Subtract 1 Learn WorkBook")
                                            
                                            }
                                            .padding()
                                            .background(Color(.green))
                                            .foregroundColor(.white)
                                            .clipShape(Capsule())
                                                
                                            }


            
//            VStack{
//                    HStack {
//                        Button {
//                            NumberOfLearnBooks += 1
//                        }
//                    label: {
//                        Text ("Add a Learn Book")
//                    }
//                        Button {
//                            NumberOfLearnBooks -= 1
//                        }
//                    label: {
//                        Text ("Subtract a Learn Book")
//                    }
//                    .padding()
//                    }
//                }
                
            }
        .padding()
        }
    }

        
#Preview {
    LearnWorkbookTotal(NumberOfLearnBooks: .constant(5))
    
}

//struct LearnPage: View {
//    static var previews: some View {
//        LearnPage()
//    }

