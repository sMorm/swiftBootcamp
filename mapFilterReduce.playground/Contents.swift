//: Playground - noun: a place where people can play

import UIKit

let defaultArray = [1, 1, 2, 3, 4, 4, 3, 3, 5, 6]

/*************************************************************/
// Create an array of odds and evens using defaultArray
// Using 'old-fashioned' loops
var evens = [Int]()
var odds = [Int]()
for item in defaultArray {
    if item % 2 == 0 {
        evens.append(item)
    } else {
        odds.append(item)
    }
}
evens
odds

// Using Higher Order Functions
let evenArray = defaultArray.filter({return $0 % 2 == 0})
evenArray
let oddArray = defaultArray.filter({return $0 % 2 != 0})
oddArray
/*************************************************************/
// Multiple each item by a factor
var scaled = [Int]()
for item in defaultArray {
    scaled.append(item * 2)
}
scaled

// Scale using map
var scalingFactor = 2
let scaledArray = defaultArray.map({return $0 * scalingFactor})
scaledArray
/*************************************************************/
var arraySum = 0
for item in defaultArray {
    arraySum += item
}

// Sum using reduce
var sum = defaultArray.reduce(0, {sum, number in sum + number})
sum