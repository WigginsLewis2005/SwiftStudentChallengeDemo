import SwiftUI
import Charts

struct PracticeWorkbookTotal: View {
    
    @Binding var NumberOfPracticeBooks: Int
    
    var body: some View {   
        VStack {
            Image("picture of books")
                .resizable()
            .aspectRatio(contentMode: .fit).frame(width: 1000, height: 300)
//                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding()
            
            Chart {  
                BarMark(
                    x: .value("Name", "Practice"),
                    y: .value("Sales", NumberOfPracticeBooks)
                )
                .foregroundStyle(.blue)
                
            }
                HStack {
                    Button {
                        NumberOfPracticeBooks  += 1
                    }                            
                    
                label: {
                    Text ("Add 1 Practice WorkBook")
                }
                    
                .padding()
                .background(Color(.blue))
                .foregroundColor(.white)
                .clipShape(Capsule())
                    
                    
                    Button {
                        NumberOfPracticeBooks -= 1
                    }
                label: {
                    Text ("Subtract 1 Practice WorkBook")
                    
                }
                .padding()
                .background(Color(.blue))
                .foregroundColor(.white)
                .clipShape(Capsule())
                }     
                
            }
            
//            VStack{
//                HStack {
//                    Button {
//                        NumberOfPracticeBooks += 1
//                    }
//                label: {
//                    Text ("Add a Practice Book")
//                }
//                    Button {
//                        NumberOfPracticeBooks -= 1
//                    }
//                label: {
//                    Text ("Subtract a Practice Book")
//                }
//                .padding()
               }
//            }
            
//       }
//        .padding()
//    }
}


#Preview {
    PracticeWorkbookTotal(NumberOfPracticeBooks: .constant(5))
}

//struct LearnPage: View {
//    static var previews: some View {
//        LearnPage()
//    }



