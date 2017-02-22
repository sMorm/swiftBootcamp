//: Playground - noun: a place where people can play

import UIKit


let testList = [10, 50, 40, 69, 20, 97, 20, 24, 43, 2, 3, 20, 20, 21, 19]

//func bubbleTest(List list: [Int]) -> [Int] {
//    
//    var toReturn = list
//    var largest = list[0]
//    var current = 0
//    
//    while current != (list.count - 1) {
//        for i in current...list.count {
//            if list[i] > largest {
//                largest = list[i]
//            }
//        }
//        toReturn[current] = largest
//        current = current + 1
//    }
//    return toReturn
//}
//
//bubbleTest(List: testList)

func quickSort(List list: [Int]) -> [Int] {
    
    
    // This is our most simplest base case that our recursive function
    // will encounter when our list is sorted
    // It checks if the list being recursively passed down still has
    // more than one item. Once it does hit the base case, it will
    // return each array which will be sorted and concatenated 
    // along with the 'equalTo' array.
    guard list.count > 1 else {return list}
    
    
    // Get the pivot, or the middle item, which is the number of items/2
    let pivot = list[list.count/2]
    
    // Create an array and filter out all the items that is less than the
    // value of the pivot
    let lessThan = list.filter { $0 < pivot}
    
    // Creates an array of all of the item that is equivalent to the pivot
    let equalTo = list.filter { $0 == pivot}
    
    
    // Finally, filter out all of the items that is greater than the pivot
    let greaterThan = list.filter { $0 > pivot}
    
    
    
    // Recursively call the quickSort function with the less than array,
    // along with the greaterThan array
    return quickSort(List: lessThan) + equalTo + quickSort(List: greaterThan)
    
}


quickSort(List: testList)