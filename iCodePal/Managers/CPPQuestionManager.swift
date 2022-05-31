//
//  CPPQuestionManager.swift
//  iCodePal
//
//  Created by Matthew Serna on 5/30/22.
//

import Foundation
import SwiftUI

protocol DataStructureQuestions {
    func llQuestions()
    
    func bstQustions()
    
    func queueQuestions()
    
    func stackQuestions()
    
    func hashMapQuestions(arr: NSMutableArray?, target: Int)
}

struct CPPQuestionManager: DataStructureQuestions {
    func llQuestions() {
        print("")
    }
    
    func bstQustions() {
        print("")
    }
    
    func queueQuestions() {
        print("")
    }
    
    func stackQuestions() {
        print("")
    }
    
    func hashMapQuestions(arr: NSMutableArray?, target: Int) {
        var result: NSMutableArray?
        
        print("Calling c++ hashMap questions...")
        
        // Call CPPObjCWrapper to invoke C++ code
        let cpp = CPPObjC_Wrapper()
        result = cpp.hashQuestions(Int32(target), arr)
        
        guard let answer = result else {
            print("No two elements added together equal to \(target)")
            return
        }
        
        print("Given array: \(String(describing: arr?.description)), indices result[\(answer[0])] + result[\(answer[1])] ==> \(target)")
    }
    
    
}
