import UIKit

var greeting = "Hello, playground"

struct Coins{
    var Name : String
    var Num : Int
}
var CoinsArr : Array<Coins>
var count = 0


let CoinNum = arc4random_uniform(34)+1

print("CoinNum = \(CoinNum)")
