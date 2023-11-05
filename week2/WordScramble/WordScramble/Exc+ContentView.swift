//
//  Exc+ContentView.swift
//  WordScramble
//
//  Created by MICHAIL SHAKHVOROSTOV on 03.11.2023.
//

import SwiftUI

extension ContentView {
    
    func addNewWords() {
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard answer != rootWords else {
            wordError(title: "Copy Root word", message: "your word copies the initial one")
            return
        }
        
        guard isLittle(word: answer) else {
            wordError(title: "Little word", message: "Your word little < 3")
            return
        }
        
        guard isOriginal(word: answer) else {
            wordError(title: "Word used alreade", message: "Be more original")
            return
        }
        
        guard isPossible(word: answer) else {
            wordError(title: "Word not possible", message: "You can't spell")
            return
        }
        
        guard isReal(word: answer) else {
            wordError(title: "Word not recognized", message: "You can't spell")
            return
        }
        
        
        withAnimation {
            userWords.insert(answer, at: 0)
            score += answer.count
        }
        
        newWord = ""
    }
    
    func startGame() {
        
        userWords = []
        
        if let textFile = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: textFile) {
                let allWords = startWords.components(separatedBy: "\n")
                rootWords = allWords.randomElement() ?? "silkworm"
                return
            }
        }
        
        fatalError("Could not load start.txt")
    }
        
    
    func isOriginal(word: String) -> Bool {
        !userWords.contains(word)
    }
    
    func isPossible(word: String) -> Bool {
        var tempWord = rootWords
        
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }
        
        return true
    }
    
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        
        let misspellsRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        return misspellsRange.location == NSNotFound
    }
    
    func isLittle(word: String) -> Bool {
        if word.count >= 3{
            return true
        } else {
            return false
        }
    }
    
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        errorAlert = true
        newWord = ""
    }
    
}
