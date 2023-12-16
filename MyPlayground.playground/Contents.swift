import UIKit
import CoreFoundation

//== Type Data | Simple Type
var greeting = "Hello, playground"
greeting = "GoodBye"
greeting = "20"

var strMultiLine = """
This will \
Be One Line \
Thanks
"""

var pi = 3.14
var handsome = true
var addIntAndDouble = 2 + 2.0

var strInterpolar = """
Result from \(pi) * \(addIntAndDouble) \
is \(pi * addIntAndDouble)
"""

let CONST_VAR = "CONST VAR"
//CONST_VAR = "ERR"


let name: String = "Yuyun Purniawan"
let age:Int = 21
let weight:Double = 103.5
let maried: Bool = false

//== Collections | Complex Type

//Arr
var fullName : [String] = ["Yuyun","Purniawan"]
fullName[0]
var emptyArr = [Bool]()


//Set - single value type
let colors:Set<String> = Set(["red","green","blue","blue"])
colors.contains("red")
var emptySet = Set<String>()

//Tupples - multi value type
var tuppleName = (
    firstName : "Yuyun",
    lastname:"purniawan",
    age:21
)
tuppleName.firstName
tuppleName.0
var emptyTupple = ()

//Dictionary - single value type
var dictName:[String:Int] = [
    "best part" : 10,
    "romance part" : 2
]

var emptyDict = Dictionary<String,String>()

dictName["best part"]
dictName["noaval"]
dictName["not available",default: 0]

//Enum - Basic
enum Result {
    case SUCCESS
    case FAILURE
}

var resSuccess = Result.SUCCESS

//Enum - Associated Value
enum Activity{
    case BORED(level : Int)
    case RUNNING (speed : Double)
    case TALKING (about : String)
    case SINGING (volume : Double)
}

Activity.BORED(level: 10)
let talked = Activity.TALKING(about: "ALIZA")

//Enum Raw Value
enum ShirtSize: Int {
    case X = 10
    case XL = 15
}

ShirtSize(rawValue: 10)
ShirtSize.X.rawValue

//== Operators
var addStrAndInt = "My Score is : " + "20"
var joinArr = ["one"] + ["two","three"]

addIntAndDouble += 3.5

1 > 5
addIntAndDouble == 7.5

if "whoami" == "root" {
    print("one")
}else if true && true || false {
    print("second")
}else{
    print("third")
}
//Ternary
12 != nil ? true : false

let constSwitchTest = 3

switch constSwitchTest{
case 1:
    print("gotchae")
    fallthrough //lanjutkan
case 2:
    print("gege")
    break
case 1..<50:
    print("weird")
    break
default:
    print("default")
}

var passingGrade = 0...1
print(fullName[passingGrade])
