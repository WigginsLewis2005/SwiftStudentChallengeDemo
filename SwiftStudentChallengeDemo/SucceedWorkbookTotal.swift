import SwiftUI
import Charts

struct SucceedWorkbookTotal: View {
    @Binding var NumberOfSucceedBooks: Int
    
    var body: some View {
        ZStack {
            Color(.customBackground)
                .ignoresSafeArea()
            
            VStack {
                Text("Succeed Workbook")
                    .foregroundColor(.accentColor)
                    .font(.custom("", fixedSize: 40))
                    .colorMultiply(.green)
                HStack {
                    Image("Homework")
                        .resizable()
                        .aspectRatio(contentMode: .fit).frame(width: 150, height: 150)
                        .cornerRadius(10)
                        .padding()
                    Image("Siblyinghelpingwithhomework")
                        .resizable()
                        .aspectRatio(contentMode: .fit).frame(width: 150, height: 150)
                        .cornerRadius(10)
                        .padding()
                }
                
                Chart {
                    BarMark(
                        x: .value("Name", "Succeed"),
                        y: .value("Sales", NumberOfSucceedBooks)
                    )
                    .foregroundStyle(.brown)
                }
                TextField("Enter Amount Here", value: $NumberOfSucceedBooks, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                    .frame(width: 100)
                
//                HStack {
//                    Button {
//                        NumberOfSucceedBooks  += 1
//                    }
//                    
//                label: {
//                    Text ("Add 1 Succeed WorkBook")
//                }
//                .padding()
//                .padding()
//                .background(Color(.brown))
//                .foregroundColor(.white)
//                .clipShape(Capsule())
//                    
//                    Button {
//                        NumberOfSucceedBooks  -= 1
//                    }
//                label: {
//                    Text ("Subtract 1 Succeed WorkBook")
//                    
//                }
//                .padding()
//                .background(Color(.brown))
//                .foregroundColor(.white)
//                .clipShape(Capsule())
//                    
//                }
                
            }
            .padding()
        }
    }
}

#Preview {
    SucceedWorkbookTotal(NumberOfSucceedBooks: .constant(5))
    
}

