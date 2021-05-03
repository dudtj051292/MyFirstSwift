import UIKit
// Closure는
// Global
// Nested
// Closure Expression
// 3가지가 존재

// Closure Expression - 이름이 없고 주변의 값들을 캡쳐할수 있는 가변 문법을 가진 클로저 타입이다.

// 함수처럼 기능을 수행하나 함수와 다르게 이름이 없다.

// First Class Type
// - 변수에 할당 할 수 있다.
// - 인자로 받을 수 있다.
// - 리턴할 수 있다.

// Closure 는
// Completion Block - 어떤 Task가 완료됐을때 Closure를 사용한다
// 네트워크를 통해 데이터를 받아오는, 언제 끝날지 모르는 상황에서 데이터가 전부 받아지면 화면에 뿌려주는 부분을 Closure로 제작한다.

// Higher Order Function
// input으로 함수를 받을 수 있는 function
// 인자를 함수로 받을수 있는것

// Closure Expression Syntax
/*
  { (parameters) -> return type in
        statement
}
 */

// Example 1 . Simple Closure
let Ex1Closure : () -> Void = {
}
 Ex1Closure()


// Example 2 . 코드블록을 구현한 Closure


// Example 3 . 인풋 파라미터를 받는 Closure
let Ex3Closure : (String) -> Void = {str in
    print ("[\(str)]")
}
 Ex3Closure("Hello World!")

// Example 4 . 값을 리턴하는 Closure
let Ex4Closure : (String) -> String = {str in
    let message = "입력된 메시지는 [\(str)] 입니다"
    return message
}
let result1 = Ex4Closure("안녕!")
print(result1)

var count = 0;
// Example 5 . Closure를 파라미터로 받는 함수 구현
func someSimpleFunction(Ex1Closure : () -> Void){
    print ("함수에서 호출이 되었어요")
    Ex1Closure()
}

someSimpleFunction(Ex1Closure:  {
    print ("Hello World! \(count + 1)")
})

Ex1Closure()


// Example 6 . Trailing Closure

func someSimpleFunc(message : String, Ex1Closure: () -> Void ){
    print("함수에서 호출됨, 메시지는 \(message)")
    Ex1Closure()
}

someSimpleFunc(message: "Jayden Space", Ex1Closure: {print("Is will be IOS Devloper")})

someSimpleFunc(message: "Jayden Space") { print("Is Able?")}
