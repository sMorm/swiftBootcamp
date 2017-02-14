//  Recursion is a way to solve problems alternatively to using iterations such
//  as using loops. Although recursion code can be more compact and elegant, it
//  is a not very efficient when it comes to memory. Because of its excessive
//  use of the call stack, it makes it very inefficient compared to regular
//  old iterations. In some cases though, recursion can be better. For example,
//  because recursion requires less code to be written, this means that there 
//  is a smaller chance of making an error in our code, and also makes it easier
//  to debug if we do have a problem.


import UIKit

func factorial(value: UInt) -> UInt {
    if value == 0 {
        return 1
    }
    return value * factorial(value: value - 1)
}

print (factorial(value: 5))
