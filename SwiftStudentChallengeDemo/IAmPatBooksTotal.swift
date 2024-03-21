
import SwiftUI
import Charts



struct IAmPatBooksTotal: View {
    //    @AppStorage ("IAmPatBooksTotal")
    
    @Binding var NumberOfIAmPatBooksTotal: Int
    
    var body: some View {
        ZStack {
            Color(.customBackground)
                .ignoresSafeArea()
            //
            VStack {
                Text("I Am Pat!")
                    .foregroundColor(.accentColor)
                    .font(.custom("", fixedSize: 40))
                    .colorMultiply(.green)
                Image("I Am Pat Smiling")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(500)
                    .padding()
//                    .resizable()
//                    .aspectRatio(contentMode: .fit).frame(width: 300, height: 300)
//                    .aspectRatio(contentMode: .fit)
//                    .cornerRadius(10)
//                    .padding()
                Chart {
                    BarMark(
                        x: .value("Name", "I Am Pat"),
                        y: .value("Sales", NumberOfIAmPatBooksTotal)
                    )
                    .foregroundStyle(.green)
                }
                TextField("Enter Amount Here", value: $NumberOfIAmPatBooksTotal, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                    .frame(width: 100)
//                HStack {
//                    Button {
//                        NumberOfIAmPatBooksTotal += 1
//                    }
//                label: {
//                    Text ("Add 1 I Am Pat Book")
//                }
//                .padding()
//                .background(Color(.green))
//                .foregroundColor(.white)
//                .clipShape(Capsule())
//                    Button {
//                        NumberOfIAmPatBooksTotal  -= 1
//                    }
//                label: {
//                    Text ("Subtract 1 I Am Pat Book")
//                }
//                .padding()
//                .background(Color(.green))
//                .foregroundColor(.white)
//                .clipShape(Capsule())
//                }
                
            }
            .padding()
        }
    }
}
  

#Preview {
    IAmPatBooksTotal(NumberOfIAmPatBooksTotal: .constant(5))

    
}




