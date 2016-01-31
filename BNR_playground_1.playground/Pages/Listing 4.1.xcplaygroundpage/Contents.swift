//: [Previous](@previous)

import Foundation

print("The maximum int is \(Int.max)")
print("The minimum int is \(Int.min)")

print("The maximum 32-bit int is \(Int32.max)")
print("The minimum 32-bit int is \(Int32.min)")

print("The maximum UInt is \(UInt.max)")
print("The minimum UInt is \(UInt.min)")

print("The maximum 32-bit unsinged int is \(UInt32.max)")
print("The minimum 32-bit unsinged int is \(UInt32.min)")

let numberOfPages: Int = 10
let numberOfChapters = 3

let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

//let firstBadValue: UInt = -1
//let secondBadValue: Int8 = 200

print(10 + 5)
print(45 - 8)
print(6 * 7)
print(10 / 3)
print(10 % 3)
print(-10 % 3)

var x = 5
x++
print(x)
x--
print(x)
++x
--x

let y: Int8 = 120
// let z = y &+ 10
let z = y &+ 10

let a: Int16 = 200
let b: Int8 = 50
let c = a + Int16(b)

let d1 = 1.1
let d2: Double = 1.1
let f1: Float = 100.3

print(10.3 + 11.4)
print(11.0 / 3)
print(11.0 / 3.0)
print(-12.4 % 5.0)

if d1 == d2 {
    print("d1 and d2 are the same!")
}

print("d1 + 0.1 is \(d1 + 0.1)")
if d1 + 0.1 == 1.2 {
    print("d1 + 0.1 is equal to 1.2")
}

//: [Next](@next)
