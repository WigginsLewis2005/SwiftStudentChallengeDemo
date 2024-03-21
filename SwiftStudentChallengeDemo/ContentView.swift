import SwiftUI
import SwiftData
struct ContentView: View {
    
    var subjectManager: SubjectManager
   
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                        NavigationLink(destination: TeacherHomePage(subjectManager: subjectManager)) {
                            ZStack {
                                
                                Image("BookWall")
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 1, height: 1)
                                    .opacity(0.4)
                                Text ("""
                                          Inventory At A Glance!
                                          Welcome
                                          """
                                )
                                    .padding()
                                    .background(Color(.green))
                                    .foregroundColor(.white)
                                    .font(.custom("", fixedSize: 40))
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding()
                            }
                           
                        }
                    }
                }
    }
   }
}

//#Preview {
//    some()
//}
//#Preview {
//    ContentView()
//}




struct MathBookCountingView: View {
    var body: some View {
        Text("Math Books")
    }
}

struct ELABookCountingView: View {
    var body: some View {
        Text("ELA Books")
    }
}

struct HistoryBookCountingView: View {
    var body: some View {
        Text("History Books")
    }
}

struct BookCountingView: View {
    let subject: String
    
    var body: some View {
        Text("\(subject) Books")
    }
}

