
import SwiftUI
import Charts



struct PatGoesToTheParkBooksTotal: View {
    //    @AppStorage ("IAmPatBooksTotal")
    
    @Binding var PatGoesToTheParkBooksTotal: Int
    
    var body: some View {
        ZStack {
            Color(.customBackground)
                .ignoresSafeArea()
            //
            VStack {
                Text("Pat Goes To The Park!")
                    .foregroundColor(.accentColor)
                    .font(.custom("", fixedSize: 40))
                    .colorMultiply(.green)
                HStack {
                    Image("Payscape")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(500)
                        .padding()
                    Image("PatGoesToThePark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(500)
                        .padding()
//                        .resizable()
//                        .aspectRatio(contentMode: .fit).frame(width: 300, height: 300)
//                        .aspectRatio(contentMode: .fit)
//                        .cornerRadius(10)
//                        .padding()
                }
                Chart {
                    BarMark(
                        x: .value("Name", "Pat Goes To The Park!"),
                        y: .value("Sales", PatGoesToTheParkBooksTotal)
                    )
                    .foregroundStyle(.blue)
                }
                TextField("Enter Amount Here", value: $PatGoesToTheParkBooksTotal, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                    .frame(width: 100)
                
//                HStack {
//                    Button {
//                        PatGoesToTheParkBooksTotal += 1
//                    }
//                    
//                label: {
//                    Text ("Add 1 Pat Goes To The Park Book")
//                }
//                .padding()
//                .background(Color(.blue))
//                .foregroundColor(.white)
//                .clipShape(Capsule())
//                    Button {
//                        PatGoesToTheParkBooksTotal -= 1
//                    }
//                label: {
//                    Text ("Subtract 1 Pat Goes To The Park Book")
//                }
//                .padding()
//                .background(Color(.blue))
//                .foregroundColor(.white)
//                .clipShape(Capsule())
//                }
            }
            .padding()
        }
    }
}
  

#Preview {
    PatGoesToTheParkBooksTotal(PatGoesToTheParkBooksTotal: .constant(5))

    
}



