//
//  GeneralView.swift
//  SwiftStudentChallengeDemo
//
//  Created by Linda A. Lewis on 3/15/24.
//

import SwiftUI
import Charts

struct GeneralView: View {
    

    @State var subjectModel: SubjectModel
    var subjectManager: SubjectManager
    
    init(subjectModel: SubjectModel, subjectManager: SubjectManager) {
        
        
        print("make general view")
        self.subjectManager = subjectManager
        self.subjectModel = subjectModel
        

        subjectModel.listOfBooks = []
        subjectManager.sortbooks(subject: subjectModel)
        
        //something weird
   }
    
    var body: some View {
        
            ZStack {
                Color(.customBackground)
                    .ignoresSafeArea()
                
                Text(subjectManager.placeHolder)
                
                VStack {
                    Text("\(subjectModel.listOfBooks.count)")
                    
                    
                    Text(subjectModel.subjectName.rawValue)
                        .foregroundColor(.accentColor)
                        .font(.custom("", fixedSize: 20))
                        .colorMultiply(.blue)
      
                    Image(subjectModel.Image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .padding()
                    Chart {
                        
                        
                        ForEach(subjectModel.listOfBooks) { book in
                            
                            
                            BarMark(
                                //                        Image{
                                //                            ("capsule")
                                x: .value("Name", "\(book.title)"),
                                y: .value("Sales", book.count)
                            )
                            .foregroundStyle(book.color)
                            .annotation {
                                Text("\(book.count)")
                                    .foregroundStyle(Color.black)
                            }
                        }
                    }
                    .padding()
                    
                        HStack {
                            
                            ForEach(subjectModel.listOfBooks.indices) { index in
                                // Find the index of where the book is in the array in subjectmanager
                                
                                NavigationLink {
                                    InputInformatiionView(subjectManager: subjectManager, currentBook: subjectModel.listOfBooks[index], subjectModel: $subjectModel)
                                } label: {
                                    Text("\(subjectModel.listOfBooks[index].title)")
                                }

                                
//                                NavigationLink(destination:
//                                                InputInformatiionView(subjectManager: subjectManager, currentBook: book, subjectModel: subjectModel)
//                                ) {
//                                        Text(book.title)
//                                            .padding()
//                                            .background(Color(book.color))
//                                            .foregroundColor(.white)
//                                            .cornerRadius(20)
//                                }
                            }
          
                        }
                    
                }
            }
//  
        }
   
    
}
//#Preview {
//    GeneralView(subjectModel:   SubjectModel(subjectName: .Math, subjectView: MathBookInventory(), listOfBooks: [], Image: "Volunteers taking inventory"), subjectManager: SubjectManager())
//}
