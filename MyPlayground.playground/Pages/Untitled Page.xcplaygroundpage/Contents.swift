//import UIKit
//import Foundation
//
//var str = "Hello, playground"
//
//
//let value = arc4random_uniform(100)
//print("--> \(value)")
//
//
////tuple
//
//let coordinates = (4,6)
//
//
//let x = coordinates.0
//let y = coordinates.1
//
//let coordinatesNames  = (x:2, y:3);
//
//let x2 = coordinatesNames.x
//let y2 = coordinatesNames.y
//
//let (x3, y3) = coordinatesNames
//
//x3
//y3
//
//let num = (front : 10 , back : 2)
//
//if num.front>num.back{
//    print("front is big")
//}else{
//    print("back is big")
//}
//
//
//let str1 = "영서"
//let str2 = "민지"
//
//if str1.elementsEqual(str2){
//    print("--> Same")
//}else{
//    print("--> Differece")
//}
//
//
//let result = str1.elementsEqual(str2) ? "Hello" : "World"
//
//print ("--> \(result)")
//
//
//var hours = 50;
//let payPerHour = 10000
//var salary = 0
//
//if hours > 40 {
//    let extraHours = hours - 40
//    salary += extraHours * payPerHour * 2
//    hours -= extraHours
//}
//
//salary += hours * payPerHour
//
//
//func hello(name : String) {
//    print( "--> Hello \(name)")
//}
//
//
//var f: () = hello(name : "영서")
//
//
//
//
//var sinValue : CGFloat = 0
//
//var iRange = 0...100;
//
//for i in iRange {
////    sinValue = sin(CGFloat.pi / 5 * CGFloat(i))
//    if i % 2 == 0 {
//        print("--> Even \(i)")
//    }
//}
//
//for i in iRange where i % 2 == 0{
//    print("--> Even : \(i)")
//
//}
//
//
//
//var array = [164, 33, 45, 23, 112, 54, 65, 11, 86, 98]
//array.sort( )
//for i in array{
//    print("--> \(i)")
//}
//

//
//let num = 20
//switch num {
//case _ where num % 2 == 0:
//    print("--> Even")
//default:
//    print("--> Odd")
//
//}


let coordinate = (1,1)
//switch coordinate {
//    case (0,0):
//        print("--> 원점")
//    case (_, 0) :
//        print("--> x축")
//    case (0, _) :
//        print("--> y축")
//    default :
//        print("--> 어딘지 모름")
//}


switch coordinate {
    case (0,0):
        print("--> 원점")
case (let x, 0) :
        print("--> x축  val : \(x)")
    case (0, let y) :
        print("--> y축  val : \(y)")
        
case (let x, let y) :
        print("--> 어딘지 모름 val (\(x)) , (\(y))")
}
