//: Playground - noun: a place where people can play

import UIKit

func printGreeting() {
    print("Hello, playground.")
}
printGreeting()

func printPersonalGreetings(names: String...) {
    for name in names {
        print("Hello, \(name). Welcome to your playground!")
    }
}
printPersonalGreetings("Alex", "Igor", "Anna")

func divisionDescription(forNumerator num: Double,
                         andDenominator den: Double,
                         withPunctuation punctuation:String = ".") -> String {
    return "\(num) divided by \(den) equals to \(num / den)\(punctuation)"
}
print(divisionDescription(forNumerator: 12.0, andDenominator: 2.5, withPunctuation: "!"))

var error = "The request failed:"
func appendErrorCode(code: Int, inout toErrorString errorString: String) {
    if code == 400 {
        errorString += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
error

func areaOfTriangle(withBase base: Double, andHeight height:Double) -> Double {
    let numenator = base * height
    func divide() -> Double {
        return numenator / 2
    }
    return divide()
}
areaOfTriangle(withBase: 3.0, andHeight: 5.0)

func sortEvenOdd(numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

let bunchOfNumbers = [1, 13, 24, 33, 45, 55, 68, 89, 101, 143]
let sortedNumbers = sortEvenOdd(bunchOfNumbers)
print("The even numbers are: \(sortedNumbers.evens);\nthe odd numbers are: \(sortedNumbers.odds)")

func grabMiddleName(name: (String, String?, String)) -> String? {
    return name.1
}

let name: (String, String?, String) = ("Alex", "V.", "Izotov")
let middleName = grabMiddleName(name)
if let theName = middleName {
    print(theName)
}

var hello = "Hello"
hello.characters.count

func greetByMiddleName(name: (first: String, middle: String?, last: String)){
    guard let middleName = name.middle where middleName.characters.count < 4 else {
        print("Hi, there")
        return
    }
    print("Hi, \(middleName)")
}
greetByMiddleName(("Alex", "V.", "Izotov"))
greetByMiddleName(("Alex", nil, "Izotov"))
greetByMiddleName(("Alex", "Vladimirovich", "Izotov"))


func beanSifter(groceryList groceryList: [String]) -> (beans: [String], otherGroceries: [String]) {
    var beans = [String]()
    var otherGroceries = [String]()
    for grocery in groceryList {
        if grocery.hasSuffix("beans") {
            beans.append(grocery)
        } else {
            otherGroceries.append(grocery)
        }
    }
    return (beans, otherGroceries)
}
let result = beanSifter(groceryList: ["green beans", "milk", "black beans", "pinto beans", "apples"])
result.beans == ["green beans", "black beans", "pinto beans"]
result.otherGroceries == ["milk", "apples"]







