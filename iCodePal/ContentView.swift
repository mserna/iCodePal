//
//  ContentView.swift
//  iCodePal
//
//  Created by Matthew Serna on 5/30/22.
//

import SwiftUI

struct ContentView: View {
    init() {
        testFunc()
    }
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    func testFunc() {
        // Temp values
        let arr: NSMutableArray? = [1, 2, 5, 11]
        let target: Int = 7
        let cppQManager = CPPQuestionManager()
        cppQManager.hashMapQuestions(arr: arr, target: target)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
