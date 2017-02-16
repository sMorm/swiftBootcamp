//: Playground - noun: a place where people can play

/*
    The whole idea in this search algorithm is to find the element in an array
    which occurs the most throughout the whole array of names.
 */

import UIKit

// Array of Strings called 'names'
var names = ["Mike", "Sam", "Ryan", "Sam", "Brian", "Oliver", "Sam", "Mike", "Sam"]

// A function named 'findCommonItem' that takes an array of strings, and returns a string.
func findCommonItem(array: [String]) -> String {
    
    // A dictionary of String, Int
    var nameCountDictionary = [String: Int]()
    
    // Here we will loop through the dictionary, we check to see if there is a value assigned
    // to the current item.
    // The if statement creates a variable count, where it stores the Int from the dictionary.
    // Then it checks to see if there exists a value, if there is, assign that value to
    // count, then increase count by 1 then assign the old value in the dictionary value to
    // the new value of count. If it no value exists in nameCountDictionary[name], then we
    // simply assign 1 to the Int bit of the dictionary.
    for name in array {
        if let count = nameCountDictionary[name] {
            nameCountDictionary[name] = count + 1
        } else {
            nameCountDictionary[name] = 1
        }
    }
    // Notice the bang(!) at the end of the print statement, removing it will force the 
    // program to print out "Optional 1", this is called "forced unwrapping."
    // See http://stackoverflow.com/questions/25846561/swift-printing-optional-variable
    for key in nameCountDictionary.keys {
        print("\(key): \(nameCountDictionary[key]!)")
    }
    return " "
}

findCommonItem(array: names)