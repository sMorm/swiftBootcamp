//: Playground - noun: a place where people can play

import UIKit


// Here is what we would do if we want to store 15 values in an array, but that is rather tedious.
// Especially when you're trying to store a large amount of items.
let numbers = [1, 2 ,3 ,4 ,5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

// To use a loop in Swift to store values :

// First we'd have to create a variable that create an array of Ints
// We do this by creating a variable, and providing the type, which in our case, an Int
// Followed by the paranthesis, the language will know that it's an array.

var arrayNumbers = [Int]()

// If you are coming from languages like JavaScript or Python, for-loops work the same way in Swift.
// The first variable followed by the 'for' keyword, is what each iteration value will be stored in.
// The second variable followed by 'in', is what we will be iterating through, in our case we will be
// doing number 1 to 1000. '1...1000' will tell the program that we will be specifying values 1 to 
// 1000.

for i in 1...1000 {
    arrayNumbers.append(i)
}

// What most people would try to do and solve this problem is that they would simply check if the current
// value is divisible by 3, then 5, then check if it's divisible by both values. This is wrong. This is
// because the first base case that would break down the problem is to check if they are both divisible
// first. This might sound like the best way to solve this problem, but it is not. There is a better way.
// If each value is divisible by the product of 3 and 5, which is 15, then that means they would be
// divisible by both.

/*
    Thing to note: 
    '\(num)' allows us to print our integers along with our string.
 */


for num in arrayNumbers {
    if num % 15 == 0 {
        print ("\(num) fizz buzz!")
    } else if num % 5 == 0 {
        print ("\(num) buzz!")
    } else if num % 3 == 0 {
        print ("\(num) fizz!")
    } else {
        print (num)
    }
}
