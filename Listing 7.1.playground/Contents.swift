//: Playground - noun: a place where people can play

import UIKit

let playground = "Hell\u{0061}\u{0301}o, playground"
var mutablePlayground = "Hello, mutablePlayground"
mutablePlayground += "!"

//for c: Character in mutablePlayground.characters {
//    print("'\(c)'")
//}
let oneCoolDude = "\u{1F60E}"

let aCute = "\u{0061}\u{0301}"
for scalar in playground.unicodeScalars {
    print("\(scalar.value) ")
}

let aCutePrecomposed = "\u{00E1}"

let b = (aCute == aCutePrecomposed)

print("aCure: \(aCute.characters.count); aCutePrecomposed: \(aCutePrecomposed.characters.count)")

let fromStart = playground.startIndex
let toPosition = 4
let end = fromStart.advancedBy(toPosition)
let fifthCharacter = playground[end]
let range = fromStart...end
let firstFive = playground[range]

var str = "Hello"
var helloUnicodeScalars = ""
for scalar in str.unicodeScalars {
    helloUnicodeScalars += "\(scalar.value)"
}
str = helloUnicodeScalars
print(str)



