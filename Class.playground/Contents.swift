import UIKit


class Personclass{
    
    init(fullName : String) {
        
        self.firstName = fullName.components(separatedBy: " ").first ?? ""
        self.lastName = fullName.components(separatedBy: " ").last ?? ""
    }
    init(firstName : String , lastName : String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    var firstName : String {
        didSet {
            print ("\(oldValue) ---> \(firstName)" )
        }
    }
    var lastName : String
}

var personA = Personclass(firstName : "Kim" , lastName : "YS")
var personB = Personclass(fullName: "Kim YS")
