//: Playground - noun: a place where people can play

import UIKit

func tossCoin() -> String{
    print("Tossing a Coin!")
    if arc4random_uniform(2) == 0 {
        return "Heads"
    } else {
        return "Tails"
    }
}

print(tossCoin())

func tossMultipleCoins(n: Int) -> Double {
    var headTimes: Double = 0
    for times in 1...n {
        if tossCoin() == "Heads" {
            headTimes += 1
        }
    }
    return headTimes/Double(n)
}

print(tossMultipleCoins(n: 100))