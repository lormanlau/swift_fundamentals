//: Playground - noun: a place where people can play

import UIKit

//for i in 1...255 {
//    print(i)
//}

//var sum: Int = 0
//
//for i in 0...255 {
//    sum += i
//    print(i, sum)
//}

var arr: [Any] = [1,2,3,4,-5,8,0,-3,9,70,0]
//var max: Int = Int.min;
//for i in arr {
//    if i > max {
//        max = i
//    }
//}
//print(max)

//for i in 1...255 {
//    if i % 2 == 1 {
//        print(i)
//    }
//}

//func returnArraryCountGreaterThanY(arr: [Int], y: Int){
//    var newArr: [Int] = []
//    for i in arr {
//        if y > i {
//            newArr.append(i)
//        }
//    }
//    print(newArr, newArr.count)
//}
//returnArraryCountGreaterThanY(arr: [6,7,42,1,4,5], y: 9)

//func printMaxMinAverageArrayVals(arr: [Int]){
//    if let max = arr.max(){
//        print("max \(max)")
//    }
//    if let min = arr.min(){
//        print("min \(min)")
//    }
//    var sum: Int = 0
//    for i in arr {
//        sum += i
//    }
//    let average = sum / arr.count
//    print("average \(average)")
//}
//printMaxMinAverageArrayVals(arr: arr)

func swapStringForArrayNegativeVals(arr: inout [Any]){
    for i in 0..<arr.count {
        if let isNum = arr[i] as? Int {
            if isNum < 0 {
                arr[i] = "dojo"
            }
        }
    }
    print(arr)
}
swapStringForArrayNegativeVals(arr: &arr)



