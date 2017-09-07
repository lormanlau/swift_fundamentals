//: Playground - noun: a place where people can play

import UIKit

struct Point {
    var x: Double = 0
    var y: Double = 0
    init(x: Double, y: Double){
        self.x = x
        self.y = y
    }
}

struct Line {
    var start: Point
    var end: Point
    init(start: Point, end: Point){
        self.start = start
        self.end = end
    }
    func length() -> Double{
        let x = self.start.x - self.end.x
        let y = self.start.y - self.end.y
        let distance = sqrt((x*x) + (y*y))
        return distance
    }
}

struct Triangle {
    var points: [Point]
    init(points: [Point]){
        self.points = points
    }
    func area() -> Double {
        let part1: Double = points[0].x * (points[1].y - points[2].y)
        let part2: Double = points[1].x * (points[2].y - points[0].y)
        let part3: Double = points[2].x * (points[0].y - points[1].y)
        let area: Double = (part1 + part2 + part3)/2
        return abs(area)
    }
}

//var myLine: Line = Line(start:Point(x:2, y:6), end:Point(x:7, y:0))
//print(myLine.length())

var newTriangle = Triangle(points:[Point(x:15, y:15), Point(x:23, y:30), Point(x:50, y:25)])
newTriangle.area()
