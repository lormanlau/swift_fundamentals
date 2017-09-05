//: Playground - noun: a place where people can play

import UIKit

func sum255(){
    var sum: Int = 0
    for n in 1...255{
        sum += n
    }
    print(sum)
}
sum255()

func swapRandomArray(arr: inout [Any]){
    let RN1 = arc4random_uniform(UInt32(arr.count))
    let RN2 = arc4random_uniform(UInt32(arr.count))
    let temp = arr[Int(RN1)]
    arr[Int(RN1)] = arr[Int(RN2)]
    arr[Int(RN2)] = temp
}

var arr: [Any] = [4,6,21,44,8,42]
swapRandomArray(arr: &arr)

func swap100(){
    for n in 1...100{
        swapRandomArray(arr: &arr)
    }
}
swap100()
func remove42(arr: [Int]){
    var arr = arr
    if let i = arr.index(of: 42){
        arr.remove(at: i)
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index '\(i)' and print the index of where '42' was before you removed it")
    }
}
remove42(arr: [2,6,8,42,3,5,9])