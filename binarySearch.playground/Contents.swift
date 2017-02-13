// Copyright 2017 Serey Morm
// binarySearch

import UIKit

let numbers = [1, 2, 4 ,6, 8, 9, 11, 13, 16, 17, 20]

// If we were told to search for a value in a sorted array, most of us would simply loop
// throug the array until the item is found. It works, but it's not very efficient. In 
// order to minimize the time to search for the value, we use a method called Binary
// Search. Binary Search simplifies the problem in half each iteration. It basically
// partitions the array into two, then it will decide whether the value to search for
// belongs to the array on the left or the right, because the middle value tells us
// where we should continue breaking down our problem. It will continue to break down
// the array, until the item is found.

// A linear search that isn't very efficient.
func linearSearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
    
    for num in array {
        if num == searchValue {
            return true
        }
    }
    return false
}

//*** Binary Search ***//

// Base Case    : Is the middle value the item we're looking for?
// Second Case  : Is it the value we're looking for?
// Third Case   : Is it on the left or right?

// If not, we check to see if the search value is on the left side of the array, or 
// on the right. If it is on the left, meaning that it's less than the middle value,
// we then move our middle index to the index of the middle value, minus one. Vice
// versa for the case where the search value belongs on the right.
func binarySearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        if middleValue == searchValue {
            return true;
        }
        
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
    }
    return false
}


// When testing such search algorithms, we should try all cases for the input value to
// see that our algorithm would work for all values.
var valueToSearch = 20

print(binarySearchForSearchValue(searchValue: 8, array: numbers))
print(linearSearchForSearchValue(searchValue: 2, array: numbers))
