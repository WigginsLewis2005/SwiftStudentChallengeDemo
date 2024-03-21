import SwiftUI
import Charts



struct LearnWorkbookTotal: View {
    
    @State var string = "hi"
    @Binding var NumberOfLearnBooks: Int
    
    
    var body: some View {
        ZStack {
            Color(.customBackground)
                .ignoresSafeArea()
//
            VStack {
                Text("Learn Workbook")
                    .foregroundColor(.accentColor)
                    .font(.custom("", fixedSize: 40))
                    .colorMultiply(.green)
                HStack {
                    Image("TeacherTeaching")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 200, height: 200)
                        .cornerRadius(10)
                        .padding()
                    Image("LearnMath")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 200, height: 200)
                        .cornerRadius(10)
                        .padding()
                }
                Chart {
                    BarMark(
                        x: .value("Name", "Learn"),
                        y: .value("Sales", NumberOfLearnBooks)
                    )
                    .foregroundStyle(.green)
                }
//             .numbersOnly(text: $string, includeDecimal: true)
                
                //ChartPickerView(intNumberString: String(NumberOfLearnBooks))
                
                TextField("Enter Amount Here", value: $NumberOfLearnBooks, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                    .frame(width: 200)
//                HStack {
//                    Button {
//                        NumberOfLearnBooks  += 1
//                    }
//                    
//                label: {
//                    Text ("Add 1 Learn WorkBook")
//                }
//                .padding()
//                .padding()
//                .background(Color(.green))
//                .foregroundColor(.white)
//                .clipShape(Capsule())
//                    Button {
//                        NumberOfLearnBooks  -= 1
//                    }
//                    
//                label: {
//                    Text ("Subtract 1 Learn WorkBook")
//                }
//                .padding()
//                .padding()
//     
//                    .foregroundColor(.dark)
//                .clipShape(Capsule())
//                }
            }
            .padding()
        }
    }
}
    
        
#Preview {
    LearnWorkbookTotal(NumberOfLearnBooks: .constant(3))
    
}

