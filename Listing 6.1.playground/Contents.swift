//: Playground - noun: a place where people can play

import Foundation

var myFirstInt: Int = 0

for _ in 0...5 {
    ++myFirstInt;
    print(myFirstInt)
    //print("myFirstInt is \(myFirstInt) at iteration \(i)")
}

//for case let i in 1...100 where i % 3 == 0 {
//    print(i)
//}

for var i = 0; i < 6; i++ {
    ++myFirstInt
    print(myFirstInt)
}

var i = 1
while i < 6 {
    ++myFirstInt
    print(myFirstInt)
    ++i
}

var shields = 5
var blasterOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0

//while shields > 0 {
//
//    if spaceDemonsDestroyed == 500 {
//        print("You beat the game!")
//        break
//    }
//
//    if blasterOverheating {
//        print("Blasters overheated. Cooldown initiated!")
//        sleep(5)
//        print("Blasters ready to fire")
//        sleep(1)
//        blasterOverheating = false
//        blasterFireCount = 0
//    }
//
//    if blasterFireCount > 100 {
//        blasterOverheating = true
//        continue
//    }
//
//    print("Fire blasters!")
//
//    ++blasterFireCount
//    ++spaceDemonsDestroyed
//}

print("===========")
for var run_count = 0; run_count < 5; run_count++ {
    for var i = 0; i <= 100; i += 2 {
        print(i)
    }
}

//: [Next](@next)
