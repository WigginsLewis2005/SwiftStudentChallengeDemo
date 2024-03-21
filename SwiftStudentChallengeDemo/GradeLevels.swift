import SwiftUI

struct GradeLevelView: View {
    var body: some View {
        ZStack {
            Color(.customBackground)
                .ignoresSafeArea()
             
            VStack {
                Image(systemName: "person.3")
                    .imageScale(.large)
                    .foregroundColor(.black)
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .font(.largeTitle)
                    .colorMultiply(.black)
                    .padding()
                Text("Grade Levels")
                    .imageScale(.large)
                    .foregroundColor(.black)
                    .font(.largeTitle)
                Text("Kindergarten")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                Text("First")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                Text("Second")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                NavigationLink(destination: ELABookInventory()) {
                    VStack {
                        Text("Third")
                            .foregroundColor(.accentColor)
                            .font(.custom("", fixedSize: 80))
                            .colorMultiply(.red)
                        Text("Fourth")
                            .foregroundColor(.black)
                            .font(.largeTitle)
                        Text("Fifth")
                            .foregroundColor(.black)
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}
#Preview {
    GradeLevelView()
}

