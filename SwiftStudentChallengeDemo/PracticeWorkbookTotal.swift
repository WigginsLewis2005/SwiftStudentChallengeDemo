import SwiftUI
import Charts

struct PracticeWorkbookTotal: View {
    
    @Binding var NumberOfPracticeBooks: Int
    
    var body: some View {
        
        ZStack {
            Color(.customBackground)
                .ignoresSafeArea()
            VStack {
                Text("Practice Workbook")
                    .foregroundColor(.accentColor)
                    .font(.custom("", fixedSize: 40))
                    .colorMultiply(.green)
                
                VStack {
                    HStack {
                        Image("ChildrenStudying")
                            .resizable()
                            .aspectRatio(contentMode: .fit).frame(width: 150, height: 150)
                            .cornerRadius(10)
                            .padding()
                        Image("TeacherHIghFiveStudent")
                            .resizable()
                            .aspectRatio(contentMode: .fit).frame(width: 150, height: 150)
                            .cornerRadius(10)
                            .padding()
                    }
                    
                    Chart {
                        BarMark(
                            x: .value("Name", "Practice"),
                            y: .value("Sales", NumberOfPracticeBooks)
                        )
                        .foregroundStyle(.blue)
                        
                    }
                    TextField("Enter Amount Here", value: $NumberOfPracticeBooks, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.numberPad)
                        .frame(width: 100)
                        
//                    HStack {
//                        Button {
//                            NumberOfPracticeBooks  += 1
//                        }
//                        
//                    label: {
//                        Text ("Add 1 Practice WorkBook")
//                    }
//                    .padding()
//                    .padding()
//                    .background(Color(.blue))
//                    .foregroundColor(.white)
//                    .clipShape(Capsule())
//                        
//                        
//                        Button {
//                            NumberOfPracticeBooks -= 1
//                        }
//                    label: {
//                        Text ("Subtract 1 Practice WorkBook")
//                        
//                    }
//                    .padding()
//                    .background(Color(.blue))
//                    .foregroundColor(.white)
//                    .clipShape(Capsule())
//                    }
                    
                }
                
                //            VStack{
                //                HStack {
                //                    Button {
                //                        NumberOfPracticeBooks += 1
                //                    }
                //                label: {
                //                    Text ("Add a Practice Book")
                //                }
                //                    Button {
                //                        NumberOfPracticeBooks -= 1
                //                    }
                //                label: {
                //                    Text ("Subtract a Practice Book")
                //                }
                //                .padding()
            }
            //            }
            
            //       }
            //        .padding()
        }
    }
}

#Preview {
    PracticeWorkbookTotal(NumberOfPracticeBooks: .constant(5))
}

//struct LearnPage: View {
//    static var previews: some View {
//        LearnPage()
//    }



