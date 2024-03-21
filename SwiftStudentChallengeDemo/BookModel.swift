//
//  BookModel.swift
//  SwiftStudentChallengeDemo
//
//  Created by Linda A. Lewis on 3/15/24.
//

import Foundation
import Observation
import SwiftUI

enum Subjects: StringLiteralType {
    case Math, Science, ELA, SocialStudies, Gym, Art
    
}

class SubjectModel: Identifiable {
    var id = UUID()
    var subjectName: Subjects
    var listOfBooks: [BookModel]
    var Image: String
    
    init(id: UUID = UUID(), subjectName: Subjects, listOfBooks: [BookModel], Image: String) {
        self.id = id
        self.subjectName = subjectName
        self.listOfBooks = listOfBooks
        self.Image = Image
    }
   
}
struct BookModel: Identifiable {
    var id = UUID()
    
    var title: String
    var count: Int
    var color: Color
    var image: String
    var subjectName: Subjects
    
    init(id: UUID = UUID(), title: String, count: Int, color: Color, image: String, subjectName: Subjects) {
        self.id = id
        self.title = title
        self.count = count
        self.color = color
        self.image = image
        self.subjectName = subjectName
    }
}

@Observable class SubjectManager {
  
    var placeHolder = ""
    var subjects:[SubjectModel] = [
        
        SubjectModel(subjectName: .Math, listOfBooks: [], Image: "Volunteers taking inventory"),
        SubjectModel(subjectName: .ELA, listOfBooks: [], Image: "IAmPat"),
        SubjectModel(subjectName: .Science, listOfBooks: [], Image: "Squirrels"),
        SubjectModel(subjectName: .SocialStudies, listOfBooks: [], Image: "Squirrels"),
        SubjectModel(subjectName: .Gym, listOfBooks: [], Image: "Squirrels"),
        SubjectModel(subjectName: .Art, listOfBooks: [], Image: "Squirrels")
        
    ]
    
    var books:[BookModel] = [
//        Math Books
        BookModel(title: "Learn", count: 0, color: .green, image: "TeacherTeaching", subjectName: .Math),
        BookModel(title: "Practice", count: 0, color: .blue, image: "TeacherHIghFiveStudent", subjectName: .Math),
        BookModel(title: "Succeed", count: 0, color: .brown, image: "Siblyinghelpingwithhomework", subjectName: .Math),
//        ELA Books
        BookModel(title: "I Am Pat!", count: 0, color: .green, image: "IAmPat", subjectName: .ELA),
        BookModel(title: "Pat Gets A Hair Cut!", count: 0, color: .blue, image: "PatGoesToThePark", subjectName: .ELA),
        BookModel(title: "Pat Makes a Sandwich!", count: 0, color: .brown, image: "handsmakingasandwich", subjectName: .ELA),
        BookModel(title: "Pat Gets A Haircut!", count: 0, color: .red, image: "1 Pat Gets A Haircut", subjectName: .ELA),
//        Science Books
        BookModel(title: "Squirrels", count: 0, color: .brown, image: "Squirrels", subjectName: .Science),
        BookModel(title: "Making Toys", count: 0, color: .green, image: "Kidsflyingpaperairplanes", subjectName: .Science),
//        Social Studies Books
        BookModel(title: "Around the World in 80 Days!", count: 0, color: .brown, image: "Kidsflyingpaperairplanes", subjectName: .SocialStudies),
        BookModel(title: "The history of the Pyramids!", count: 0, color: .red, image: "Kidsflyingpaperairplanes", subjectName: .SocialStudies),
//        Gym Books
        BookModel(title: "Health", count: 0, color: .red, image: "Kidsflyingpaperairplanes", subjectName: .Gym),
        BookModel(title: "The history of the Pyramids!", count: 0, color: .red, image: "Kidsflyingpaperairplanes", subjectName: .Gym),
//        Art Boos
        BookModel(title: "The history of the Pyramids!", count: 0, color: .red, image: "Kidsflyingpaperairplanes", subjectName: .Art),
        BookModel(title: "The history of the Pyramids!", count: 0, color: .red, image: "Kidsflyingpaperairplanes", subjectName: .Art)
    ]
    
    
    
    func updateBookCount(currentBook: BookModel, subjectModel: SubjectModel, subjectManager: SubjectManager) {
    
             
                if let index = books.firstIndex(where: { $0.title == currentBook.title  }){
                    
                    books[index].count = currentBook.count
                    
                    subjectModel.listOfBooks = []
                    subjectManager.sortbooks(subject: subjectModel)
                    
                    placeHolder = ""
       
                }
    }
    
    
    func sortbooks(subject: SubjectModel) {
        
        print("sort happens")
        
        for book in books {
            if book.subjectName == subject.subjectName {
                subject.listOfBooks.append(book)

            }
        }
    }
}
