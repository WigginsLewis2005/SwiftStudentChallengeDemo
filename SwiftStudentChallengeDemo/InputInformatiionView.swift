import SwiftUI
import Charts



struct InputInformatiionView: View {
    
    

     var subjectManager: SubjectManager
    @State var currentBook: BookModel
   @Binding var subjectModel: SubjectModel
   
    
    
 
    
    
    var body: some View {
        ZStack {
            Color(.customBackground)
                .ignoresSafeArea()
//
            VStack {
                Text("\(currentBook.title)")
                    .foregroundColor(.accentColor)
                    .font(.custom("", fixedSize: 40))
                    .colorMultiply(.green)
                HStack {
                    Image("\(currentBook.image)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 200, height: 200)
                        .cornerRadius(10)
                        .padding()
//                    Image("\(currentBook.image)")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
////                        .frame(width: 200, height: 200)
//                        .cornerRadius(10)
//                        .padding()
                }
                Chart {
                    BarMark(
                        x: .value("Name", "\(currentBook.title)"),
                        y: .value("Sales", "\(currentBook.count)")
                    )
                    .foregroundStyle(currentBook.color)
                    .annotation {
                        Text("\(currentBook.count)")
                            .foregroundStyle(Color.black)
                    }
                }
//             .numbersOnly(text: $string, includeDecimal: true)
                
                //ChartPickerView(intNumberString: String(NumberOfLearnBooks))
                
                TextField("Enter Amount Here", value: $currentBook.count, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                    .frame(width: 200)
//NavigationLink(currentBook, destination: updateBookCount)
                
                Button {
                    subjectManager.updateBookCount(currentBook: currentBook, subjectModel: subjectModel, subjectManager: subjectManager)
                } label: {
                    Text("update")
                }
                

            }
            .padding()
        }
        .onDisappear(perform: {
            
            subjectModel.listOfBooks = []
            subjectManager.sortbooks(subject: subjectModel)
        })
    }
}
    
//        
//#Preview {
//    InputInformatiionView(currentBook: BookModel(title: "Learn", count: 7, color: .green, image: "TeacherTeaching", subjectName: .Math))
//    
//}


