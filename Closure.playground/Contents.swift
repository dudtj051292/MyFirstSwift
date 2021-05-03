import UIKit

//Closure

var multiplyClosure: (Int , Int) -> Int = { $0 * $1 }
var multiplyClosure2: (Int , Int) -> Int = { a, b in
    return a * b
}

let result = multiplyClosure(4,2)
let result2 = multiplyClosure2(4,8)
//

// function이 closure를 받는것?


func operateTwoNum(a : Int  , b : Int, opertion : (Int, Int) -> Int) -> Int{
    let result = opertion(a,b)
    return result
}

operateTwoNum(a: 4, b: 2, opertion: multiplyClosure)

var addClosure : (Int, Int) -> Int = { a, b in
    return a+b
}

operateTwoNum(a: 8, b: 10, opertion: addClosure)

let myName = "Jayden"
var printClosure : (String) -> String = { str in
    return "Input value is \(str)"
}


if myName == "Jayden" {
    printClosure = { str in
        return "Modified Closure value \(myName)"
    }
}

printClosure("value")


//input만 있는 closure

let voidClosure: () -> Void = {
    print("voidClosure")
}

voidClosure()
  
//capturing values

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()


count
