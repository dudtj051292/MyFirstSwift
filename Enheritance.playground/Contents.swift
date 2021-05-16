import UIKit


struct Grade {
    var letter : Character
    var point : Double
    var credit : Double

}


class Person {
    var fName : String
    var lName : String
    
    init(fName : String, lName :String){
        self.fName = fName
        self.lName = lName
    }
    
    func printfullName(){
        print("\(fName) \(lName)")
    }
}

//
//class Student {
//    var grade : [Grade] = []
//    var fName : String
//    var lName : String
//
//    init(fName : String, lName :String){
//        self.fName = fName
//        self.lName = lName
//    }
//
//    func printfullName(){
//        print("\(fName) \(lName)")
//    }
//}

class Student : Person{
    var grade : [Grade] = []
    
}

