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


//== Loop

//For
for n in 1...3{
    print("Loop : \(n)")
}

for _ in 1...3{
    
}

//while
var counter = 0
while counter < 20{
    counter += 1
}

var number: Int = 10
while number > 0 {
    //10 8 6 4 2
    number -= 2
    // 8 6 4 2 0
    
    if number == 2{
        continue
    }
    if number % 2 == 0 {
        print("\(number) is an even number.")
    }
}

// Labeled Loop
rootLoop: for n in 0...5{
    n
    var j = 0
    
    while j < 5{
        
        if n == 3{
            break rootLoop
        }
        
        j += 1
    }
}


//== Function

// Normal - Default - Diff ext-int
func printHelp(nama name:String = "anonymouse"){
    
    let messages = """
    Hello \(name) is a help message
    """
    
    print(messages)
}

printHelp(nama: "yuyun")
printHelp()

// Return Value
func square(_ number: Int)->Int{
    return number * number
}

print(square(100))

// Spread / Variadic
func variadicFunc(_ ballsNum:Int...){
    for ballNum in ballsNum{
        ballNum
    }
}
variadicFunc(1,2,3)

enum MyErr:Error{
    case WEAKPASS
}

//Error Handling
func checkPassword(_ pass:String) throws->Bool{
    if(pass == "pass"){
        throw MyErr.WEAKPASS
    }
    
    return true
}

do{
    try checkPassword("pass")
}catch{
    print("Password weak")
}

//INOUT params - Mutatuing

func mutateThisToZero(_ num: inout Int){
    num = 0
}

var mutateNum = 10
mutateThisToZero(&mutateNum)
mutateNum

//== Functional

let doDriving = {
    (transport:String) -> String in //Unuse if not consume
    print("I Driving \(transport)")
    return transport
}

func runClosures(_ callable:(String)->String){
    callable("Car")
}

runClosures(doDriving)

//Trailing closure syntax
func travel(_ destination: String, _ runnable: () -> Void) {
    print("I'm getting ready go to \(destination)")
    runnable()
    print("I arrived!")
}

travel("Bali") {
    print("Now Goooooo!")
}
