//
//  SampleGrides
//  SwiftStudentChallengeDemo
//
//  Created by Linda A. Lewis on 3/12/24.
//

import SwiftUI

struct GridView: View {
    private var data: [Int] = Array(1...20)
    private let colors:  [Color] = [.red, .green, .blue, .brown]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    private let numberColumns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    private let fixedColumns = [
        GridItem(.fixed(200)),
        GridItem(.fixed(200)),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns:fixedColumns, spacing: 20) {
                    ForEach(data, id: \.self) { number in
                        ZStack {
                            Rectangle()
                                .frame(width: 170, height: 170)
                            .foregroundColor(colors[number%4])
                            .cornerRadius(30)
                            Text("\(number)")
                                .foregroundColor(.white)
                                .font(.system(size: 80, weight: .medium, design: .rounded))
                        }
                    }
                }
            }
            .padding(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .navigationTitle("Grid Sample")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
