//
//  ChartPickerView.swift
//  SwiftStudentChallengeDemo
//
//  Created by Linda A. Lewis on 3/11/24.
//
// new view
// @State private var selectedSubject
// picker for the different subjects
// based on the picker selection, show mathbookinventory or show elabook inventory
import SwiftUI

enum BookType {
    case math, ela
}

struct ChartPickerView: View {
    enum FocusedField {
        case int, dec
    }
    @
    State var intNumberString: String = ""
    @State private var decNumberString = ""
    @FocusState private var focusedField: FocusedField?
    @State var selectedBookInventory: BookType = .math
  //  @Binding var NumberOfLearnBooks: Int
    
    
    var body: some View {
        VStack {
            //            Picker("SelectedBookInventory", selection: $selectedBookInventory) {
            //                Text("Math Book Inventory").tag(BookType.math)
            //                Text("ELA Book Inventory").tag(BookType.ela)
            //            }
            
           
            TextField("Enter Integer Number", text: $intNumberString)
                .focused($focusedField, equals: .int)
                .numbersOnly( text: $intNumberString)
//            TextField("Enter Decimal Number", text: $decNumberString)
//                .focused($focusedField, equals: .dec)
//                .numbersOnly(text: $decNumberString, includeDecimal: true)
            Spacer()
        }
//                .navigationTitle("Numbers Only")
        .textFieldStyle(.roundedBorder)
        .frame(width: 200)
        .toolbar {
            ToolbarItem(placement: .automatic) {
                //Spacer()
            }
            ToolbarItem(placement: .keyboard) {
                Button {
                    focusedField = nil
                } label: {
                    Image(systemName: "keyboard.chevron.compact.down")
                }
            }
           // .pickerStyle(.segmented)
            // use a switch statement to switch between the cases of selectedBookInventory. if the case if .math, then show the MathBookView. if the case is .ela, show the ELABookView
        }
        .onAppear {
            UITextField.appearance().clearButtonMode = .whileEditing
        }
    }
}

    


#Preview {
    ChartPickerView()
//    static var preview: some View {
//        ContentView()
//    }
}
