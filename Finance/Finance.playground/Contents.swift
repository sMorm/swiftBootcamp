//: Playground - noun: a place where people can play

import Foundation

// V = P(rinciple) x (1 + I)
// V = 100 x (1.08)

var accountValue:Double = 0
let principle:Double = 100
let interestRate:Double = 1.075

func calculateInterest(principle:Double, interest:Double) -> Double {
    if (principle > 0) {
        return principle * interestRate
    }
    else {
        return 0
    }
}

accountValue = calculateInterest(principle: principle, interest: interestRate)

print("After one year, you have $\(accountValue). You started with $\(principle) and made \(interestRate)% on your money")
