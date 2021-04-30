
func isfullName(first : String , last : String){
    print("-->\(first) , \(last)")
}

func isfullName2(_ first : String , _ last : String){
    print("-->\(first) , \(last)")
}

func isfullName3(first : String , last : String) -> String{
    return "\(first) , \(last)"
}


isfullName(first: "Kim", last: "Youngsuh")
isfullName2("Kim", "Youngsuh")
var fullName = isfullName3(first: "Kim", last: "Youngsuh")
