//: Playground - noun: a place where people can play

// Given a sentence, reverse every other word
import UIKit

var str = "This is my sample sentence that will be reveresed by every other word"


// function reverseEveryOther takes a string as an argument, and returns a string that
// will be reversed(every other word)
// the components function, given a "separtedBy" parameter, will create a token that is
// delineated by a space.
func reverseEveryOther(sentence: String) -> String{
    // allWords now contains an array of each token
    let allWords = str.components(separatedBy: " ")
    
    // Create an empty string to store the reversed sentence
    var reversedSentence = ""
    
    for index in 0...allWords.count - 1 {
        let word = allWords[index]
        // If not an empty string, add a space.
        if reversedSentence != "" {
            reversedSentence += " "
        }
        
        // Check for every other iteration. 
        if index % 2 == 1 {
            // word.characters.reversed will reverse all characters in the word
            let reversedWord = String(word.characters.reversed())
            reversedSentence += reversedWord
        } else {
            reversedSentence += word
        }
    }
    
    return reversedSentence
}


print(reverseEveryOther(sentence: str))