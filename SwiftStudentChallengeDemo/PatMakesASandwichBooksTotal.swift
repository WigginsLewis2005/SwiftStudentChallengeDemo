
import SwiftUI
import Charts



struct PatMakesASandwichBooksTotal: View {
    //    @AppStorage ("IAmPatBooksTotal")
    
    @Binding var PatMakesASandwichTotal: Int
    
    var body: some View {
        ZStack {
            Color(.customBackground)
                .ignoresSafeArea()
            //
            VStack {
                Text("Pat Makes A Sandwich!")
                    .foregroundColor(.accentColor)
                    .font(.custom("", fixedSize: 40))
                    .colorMultiply(.green)
                
                HStack {
                    Image("handsmakingasandwich")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150)
                        .cornerRadius(500)
                        .padding()
                    Image("Pat'sHamSandwich")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(300)
                        .padding()
                }
                
//                    .resizable()
//                    .aspectRatio(contentMode: .fit).frame(width: 300, height: 300)
//                    .aspectRatio(contentMode: .fit)
//                    .cornerRadius(10)
//                    .padding()
                Chart {
                    BarMark(
                        x: .value("Name", "Pat Makes A Sandwich!"),
                        y: .value("Sales", PatMakesASandwichTotal)
                    )
                    .foregroundStyle(.brown)
                }
                TextField("Enter Amount Here", value: $PatMakesASandwichTotal, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                    .frame(width: 100)
                
//                HStack {
//                    Button {
//                        PatMakesASandwichTotal += 1
//                    }
//                    
//                label: {
//                    Text ("Add 1 Pat Makes A Sandwich!")
//                }
//                .padding()
//                .background(Color(.brown))
//                .foregroundColor(.white)
//                .clipShape(Capsule())
//                    
//                    Button {
//                        PatMakesASandwichTotal -= 1
//                    }
//                label: {
//                    Text ("Pat Makes A Sandwich!")
//                }
//                .padding()
//                .background(Color(.brown))
//                .foregroundColor(.white)
//                .clipShape(Capsule())
//                }
            }
            .padding()
        }
    }
}
  

#Preview {
    PatMakesASandwichBooksTotal(PatMakesASandwichTotal: .constant(5))

    
}



