//: Playground - noun: a place where people can play
// Wrapping an array means that if we had to choose an element in side of an array,
// it would return another array that starts with the element we have chosen, then
// continue on until the array ends, wraps around to the beginning of the array.
// Finally, the last element of the new array would be the element before the
// item we have chose.
// For example, given:
//                      [1, 2, 3, 4, 5, 6, 7]
// If 3 was chosen, our wrapped and returned array would be:
//                      [3, 4, 5, 6, 7, 1, 2]

import UIKit

// Item to be chosen, where our new array would start
let chosenItem = 3
// Original, Default array
var defaultArray = [1, 2, 3, 4, 5, 6, 7]
// The wrapped array, where our result would be stored.
var wrappedArray = [Int]()
// This array is what we would store all the elements before the chosen item
// So this is what the end of our array would look like
var beforeChosen = [Int]()

// The check after the 'or' tells us that, we have found the chosen item, so append everything
// else after that chosen item.
for item in defaultArray {
    if item == chosenItem || wrappedArray.count > 0{
        wrappedArray.append(item)
    } else {
        beforeChosen.append(item)
    }
}


// Finally, in Swift, we can simply 'add' arrays together, be careful of the 
// order you are adding them by.
wrappedArray = wrappedArray + beforeChosen
