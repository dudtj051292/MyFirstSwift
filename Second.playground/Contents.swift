import UIKit


//this is My second Xcod
// Study Swift Function

//func functionName(extrenalName param : ParamType) -> ReturnType {
//    //...
//
//    return returnvalue
//}


// Swift can overWrite

func printTotalPrice(price : Int , count : Int){
    print("Total Price \(price * count)");
}

func printTotalPrice(price : Double , count : Double){
    print("Total Price \(price * count)");
}



// In - out param

func incrementAndPrint(_ value : inout Int)
{
    value += 1
    print (value)
}
var value = 3
incrementAndPrint( &value)


//function as a Param

func add(_ a : Int , _ b : Int ) -> Int{
    return a - b
}


func subtract(_ a : Int , _ b : Int ) -> Int{
    return a - b
}


var function = add

function(4,2)

function = subtract
function (4,2)

func printResult(_ function :(Int, Int) -> Int , _ a : Int , _ b : Int){
    let result = function(a,b)
    print(result)
}
printResult( add, 2, 44)


// optional
/*
  
 
 */

