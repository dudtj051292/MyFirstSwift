import UIKit

//구조체
//Class 와 Structure의 차이

// Class는 Call by Reference

// Structure 는 Call by Value

struct store {
    var brand : String
    var location : point
    
    let deliveryRange = 2.0
    func isDeliverable(userLoc : point) -> Bool {
        if(getDistance(current: userLoc, target: location) < deliveryRange){
            return true
        }else{
            return false
        }
    }
}
struct point {
    var X : Int
    var Y : Int
}


let store1 = store(brand: "GS", location:  point(X: Int(arc4random_uniform(10)), Y: Int(arc4random_uniform(10))))


let store2 = store(brand: "SEVEN", location:  point(X: Int(arc4random_uniform(10)), Y: Int(arc4random_uniform(10))))


let store3 = store(brand: "CU", location:  point(X: Int(arc4random_uniform(10)), Y: Int(arc4random_uniform(10))))


let store4 = store(brand: "EMART", location:  point(X: Int(arc4random_uniform(10)), Y: Int(arc4random_uniform(10))))


var stores : Array<store> = [store1, store2, store3]

stores



let myLoc = point(X: Int(arc4random_uniform(10)), Y: Int(arc4random_uniform(10)))


func getDistance(current c : point , target t : point) -> Double {
    //두점사이의 거리 구하기
    return sqrt( (Double(c.X - t.X) * Double(c.X - t.X)) +  (Double(c.Y - t.Y) * Double(c.Y - t.Y)) )
}

// ArrayType는 Array<stores>로도 넘겨줄수 있다.
func FindCloseStorePrint(Loc loc : point , storePotition stores : [store]) ->  Void{
    var closeStoreName = ""
    var closeStoreDistance = Double.infinity
    var isDeliverable = false
    for store in stores {
        let dist = getDistance(current: loc, target: store.location)
        closeStoreDistance = min(dist, closeStoreDistance)
        if(closeStoreDistance == dist){
            closeStoreName = store.brand
            isDeliverable = store.isDeliverable(userLoc: loc)
        }
        
    }
    
    
    print("가장 가까운 편의점은 \(closeStoreName)편의점이며 거리는 \(closeStoreDistance)입니다 배달가능 여부 \( isDeliverable  )")
    
}

FindCloseStorePrint(Loc: myLoc, storePotition: stores)


// 1. 강의 이름 강사이름 학생수를 가지는 struct aksemfrl
// 2. 강의 배열과 강사이름을 받아서 해당 강사의 강의 이름을 출력하는 함수

// 강의 2개 만들고 강사이름으로 강의 찾기


struct Lecture{
    var teacher : String
    var className : String
    var Students : Int
}

let lecture1 = Lecture(teacher: "Min", className: "응용SW기반...", Students: 20)
let lecture2 = Lecture(teacher: "Song", className: "윈도우 프로그래밍", Students: 25 )
let lecture3 = Lecture(teacher: "Lee", className: "이산수학", Students: 30)


let Lectures = [lecture1, lecture2, lecture3]

let getTeacher : (String,[Lecture] ) -> Void = { teacher , lectures in
//    var className = ""
//    for lecture in lectures {
//        if lecture.teacher == teacher {
//            className = lecture.className
//        }
//    }
    
    let lectureName = lectures.first { $0.teacher == teacher}?.className ?? ""
    
    print("강사 \(teacher) 의 수업은 \(lectureName)입니다")
    
}


getTeacher("Min", Lectures)
