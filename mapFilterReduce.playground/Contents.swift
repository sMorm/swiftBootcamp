// Copyright (c) 2017 Serey Morm
import UIKit

let defaultArray = [1, 1, 2, 3, 4, 4, 3, 3, 5, 6]

/*************************************************************/
// Create an array of odds and evens using defaultArray

// Using 'old-fashioned' loops, we loop through, check if it's
// divisible by 2, if it is, append to even, else append to odd
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
// Filter returns the elements stored in an array that satisfies
// the given condion as an argument.
let evenArray = defaultArray.filter({return $0 % 2 == 0})
evenArray
let oddArray = defaultArray.filter({return $0 % 2 != 0})
oddArray

/*************************************************************/
// Multiple each item by a factor
var scaled = [Int]()

// Old-fashion : loop through array, multiply by 2, append to
// result array
for item in defaultArray {
    scaled.append(item * 2)
}
scaled

// Scale using map
var scalingFactor = 2
let scaledArray = defaultArray.map({return $0 * scalingFactor})
scaledArray
/*************************************************************/
// Simply add up all the values in the array, then store in sum
var arraySum = 0
for item in defaultArray {
    arraySum += item
}
arraySum
// Sum using reduce

// Adding up the sum using reduce gets pretty trick, the first
// parameter takes initial value, then it stores the current
// working item in 'number', and adds it to sum in each of the
// iteration of the array
var sum = defaultArray.reduce(0, {sum, number in sum + number})
sum
/*************************************************************/