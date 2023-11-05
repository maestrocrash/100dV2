//
//  WorkingWithString.swift
//  week2.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 02.11.2023.
//

import SwiftUI

struct WorkingWithString: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func testString() {
        let input = """
        a
        b
        c
        """
        
        let lettes = input.components(separatedBy: "\n")
        let letter = lettes.randomElement()
        let trimed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func testWords() {
        let word = "Swift"
        let cheker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = cheker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
        
    }
}

#Preview {
    WorkingWithString()
}
