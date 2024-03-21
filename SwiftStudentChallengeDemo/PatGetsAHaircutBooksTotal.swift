
import SwiftUI
import Charts



struct PatGetsAHaircutBooksTotal: View {
    //    @AppStorage ("IAmPatBooksTotal")
    
    @Binding var PatGetsAHaircutBooksTotal: Int
    
    var body: some View {
        ZStack {
            Color(.customBackground)
                .ignoresSafeArea()
            //
            VStack {
                Text("Pat Gets A Haircut!")
                    .foregroundColor(.accentColor)
                    .font(.custom("", fixedSize: 40))
                    .colorMultiply(.green)
                Image("1 Pat Gets A Haircut")
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
                        x: .value("Name", "Pat Gets A Haircut!"),
                        y: .value("Sales", PatGetsAHaircutBooksTotal)
                    )
                    .foregroundStyle(.red)
                }
                TextField("Enter Amount Here", value: $PatGetsAHaircutBooksTotal, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                    .frame(width: 100)
                
//                HStack {
//                    Button {
//                        PatGetsAHaircutBooksTotal += 1
//                    }
//                    
//                label: {
//                    Text ("Add 1 Pat Gets A Haircut!")
//                }
//                .padding()
//                .background(Color(.red))
//                .foregroundColor(.white)
//                .clipShape(Capsule())
//                    
//                    Button {
//                        PatGetsAHaircutBooksTotal  -= 1
//                    }
//                label: {
//                    Text ("Subtract 1 Pat Gets A Haircut!")
//                }
//                .padding()
//                .background(Color(.red))
//                .foregroundColor(.white)
//                .clipShape(Capsule())
//                }
            }
            .padding()
        }
    }
}
  

#Preview {
    PatGetsAHaircutBooksTotal(PatGetsAHaircutBooksTotal: .constant(5))

    
}



