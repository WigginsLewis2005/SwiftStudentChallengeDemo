import SwiftUI
import Charts

struct SucceedWorkbookTotal: View {
    @Binding var NumberOfSucceedBooks: Int
    
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
                    x: .value("Name", "Succeed"),
                    y: .value("Sales", NumberOfSucceedBooks)
                    )
                .foregroundStyle(.brown)
            }         
            
            HStack {
                Button {
                    NumberOfSucceedBooks  += 1
                }                            
                
            label: {
                Text ("Add 1 Succeed WorkBook")
            }
            .padding()
            .background(Color(.brown))
            .foregroundColor(.white)
            .clipShape(Capsule())
                
                Button {
                    NumberOfSucceedBooks  -= 1
                }
            label: {
                Text ("Subtract 1 Succeed WorkBook")
                
            }
            .padding()
            .background(Color(.brown))
            .foregroundColor(.white)
            .clipShape(Capsule())
                
            }
            
            
//            VStack{
//                HStack {
//                    Button {
//                        NumberOfSucceedBooks += 1
//                    }
//                label: {
//                    Text ("Add a Succeed Book")
//                }
//                    Button {
//                        NumberOfSucceedBooks -= 1
//                    }
//                label: {
//                    Text ("Subtract a Succeed Book")
//                }
//                .padding()
//                }
//            }
            
        }
        .padding()
    }
}


#Preview {
    SucceedWorkbookTotal(NumberOfSucceedBooks: .constant(5))
    
}

//struct LearnPage: View {
//    static var previews: some View {
//        LearnPage()
//    }





