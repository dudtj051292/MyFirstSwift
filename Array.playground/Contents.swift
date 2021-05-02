import UIKit

var greeting = "Hello, playground"
 
// Array

// 같은 Type
//

var evenNum: [Int] = [2,4,6,8]
var evenNum2 : Array<Int> = [2,4,6,8]

evenNum.append(10)
//evenNum2.append(10)

evenNum += [12,14,16]

evenNum.append(contentsOf: [18,20])
 

let isEmpty = evenNum.isEmpty

evenNum.count


// 1. 이름 직업 도시에 대해 딕셔너리
// 2. 도시를 부산으로
// 딕셔너리를 받아 이름과 도시를 프린트하는 함수

var dic : [String  : String] = ["name" : "Jayden" , "Job" : "Developer" ,  "city" : "Seoul"]
var dic2 : Dictionary<String , String > = ["name" : "Jayden" , "Job" : "Developer" ,  "city" : "Seoul"]
var dic3 : Set<Int> = [1,2,3]

print(dic3)

dic["city"] = "Busan"

func printNameAndCity(dic : [String : String]){
    if let name = dic["name"] , let city = dic["city"] {
        print(name, city)
    }else{
        print("-> Cannot find")
    }
}

printNameAndCity(dic: dic)


var evenNum3 : Array<Int>?



var optionStr : String?

func StringToIntConverter(str s : String?){
    if s == nil {
        print("nil 문자열")
       }else{
        print ("Converted Value : \(s!)" )
     }
}


StringToIntConverter(str: optionStr)
StringToIntConverter(str: "212")

