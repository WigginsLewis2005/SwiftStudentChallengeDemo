import SwiftUI

struct SubjectsView: View {
    
    var subjectManager: SubjectManager
    
    //master data
    
    private let fixedColumns = [
        GridItem(.fixed(200)),
        GridItem(.fixed(200)),
    ]
    
    var body: some View {
     
        ZStack {
            Color(.customBackground)
                .ignoresSafeArea()

                VStack {
                    Text("MathBookInventory")
                        .foregroundColor(.accentColor)
                        .font(.custom("", fixedSize: 40))
                        .colorMultiply(.blue)
                        .padding()
                        .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                    Image(systemName: "books.vertical")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                        .font(.largeTitle)
                        .colorMultiply(.white)
                    Text("List of Subjects")
                        .foregroundColor(.accentColor)
                        .font(.largeTitle)
                    VStack {
                        LazyVGrid(columns:fixedColumns, spacing: 20) {
                            ForEach (subjectManager.subjects) { subject in
                                NavigationLink {
                                    GeneralView(subjectModel: subject, subjectManager: subjectManager)
                                    
                                } label: {
                                    
                                  
                                    Rectangle()
                                        .frame(width: 170, height: 170)
                                        .foregroundColor(.blue)
                                        .cornerRadius(30)
                                        .overlay {
                                            Text(subject.subjectName.rawValue)
                                                .foregroundColor(.white)
                                                .font(.custom("", fixedSize: 25))
                                                
                                        }
                                        
                                    
                                }
                                .onTapGesture {
                                    print("go into view")
                                }
                                
                                
                            }
                        }
                    }
                }
            }
        }
    }

#Preview {
    SubjectsView(subjectManager: SubjectManager())
}


