//
//  SwiftStudentChallengeDemoApp.swift
//  SwiftStudentChallengeDemo
//
//  Created by Linda A. Lewis on 2/23/24.
//

import SwiftUI

@main
struct SwiftStudentChallengeDemoApp: App {
    @State var subjectManager = SubjectManager()
   
    var body: some Scene {
        WindowGroup {
           ContentView(subjectManager: subjectManager)
           // ChartPickerView()
           // SubjectsView()
        }
    }
}
