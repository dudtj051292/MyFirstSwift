import UIKit

struct Lecture {
    var title : String
    var maxStudents : Int = 10
    var numOfRegistered : Int = 0
    func remainSeats() -> Int {
        let remainSeats = maxStudents - numOfRegistered
        return remainSeats
    }
    mutating func register() {
        self.numOfRegistered += 1
    }
    static let target : String = "AnyBody want to learn IOS"
    
    static func Academy() -> String {
        return "fastCampus"
    }
}

var lec = Lecture(title: "IOS Basic")

//func remainSeats(of lec : Lecture) -> Int {
//    let remainSeats = lec.maxStudents - lec.numOfRegistered
//    return remainSeats
//}

//remainSeats(of: lec)

lec.remainSeats()


lec.register()
lec.remainSeats()
Lecture.target
Lecture.Academy()


struct Math {
    static func abs(value: Int) -> Int {
        if( value > 0){
            return value
        }else {
            return -value
        }
    }
}


Math.abs(value: -20)
extension Math{
    static func sqrt(value : Int) -> Int {
        return value * value
    }
    
    static func half(value : Int) -> Int {
        return value / 2
    }
}

Math.sqrt(value: 79)

Math.half(value: 79)

extension Int {
    func square() -> Int {
        return self * self
    }
}

var k : Int = 11

k.square()
