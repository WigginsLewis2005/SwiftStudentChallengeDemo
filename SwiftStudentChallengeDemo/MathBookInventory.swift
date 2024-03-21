import SwiftUI
import Charts

struct MathBookInventory: View {
    
    
    @State private var NumberOfLearnBooks = 6
    @State private var NumberOfPracticeBooks = 4
    @State private var NumberOfSucceedBooks = 2
    
    
    
    

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.customBackground)
                    .ignoresSafeArea()
           
            VStack {
                Text("Math Boook Inventory")
                    .foregroundColor(.accentColor)
                    .font(.custom("", fixedSize: 40))
                    .colorMultiply(.blue)
                Image("Volunteers taking inventory")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(500)
                    .padding()
                
                Chart {
                    //                    .chartYAxis {
                    //                        AxisMarks(position: .leading)
                    //                    }
                    BarMark(
                        //                        Image{
                        //                            ("capsule")
                        x: .value("Name", "Learn"),
                        y: .value("Sales", NumberOfLearnBooks)
                    )
                    .foregroundStyle(.green)
                    .annotation {
                        Text("\(NumberOfLearnBooks)")
                            .foregroundStyle(Color.black)
                    }
                    
                    BarMark(
                        x: .value("Name", "Practice"),
                        y: .value("Sales", NumberOfPracticeBooks)
                    )
                    .foregroundStyle(.blue)
                    .annotation {
                        Text("\(NumberOfPracticeBooks)")
                            .foregroundStyle(Color.black)
                    }
                    BarMark(
                        x: .value("Name", "Succeed"),
                        y: .value("Sales", NumberOfSucceedBooks)
                    )
                    .foregroundStyle(.brown)
                    .annotation {
                        Text("\(NumberOfSucceedBooks)")
                            .foregroundStyle(Color.black)
                    }
                    
                }
                .padding()
                VStack  {
                    NavigationLink(destination: LearnWorkbookTotal(NumberOfLearnBooks: $NumberOfLearnBooks)) {
                        Text("Learn")
                            .padding()
                            .background(Color(.green))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                        NavigationLink(destination: PracticeWorkbookTotal(NumberOfPracticeBooks: $NumberOfPracticeBooks)) {
                            Text("Practice")
                                .padding()
                                .background(Color(.blue))
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                            NavigationLink(destination: SucceedWorkbookTotal(NumberOfSucceedBooks: $NumberOfSucceedBooks)) {
                                Text("Succeed")
                                    .padding()
                                    .background(Color(.brown))
                                    .foregroundColor(.white)
                                    .clipShape(Capsule())
                            }
                            }
                        }
                    }
                }
            }
        }
    }
}
   
#Preview {
    MathBookInventory()
            
        }
    

