//: [Previous](@previous)

import Foundation

var population: Int = 110_422
var message: String
var hasPostOffice: Bool = true

if population < 10_000 {
    message = "\(population) is a small town"
} else if population > 10_000 && population < 50_000 {
    message = "\(population) is a medium town"
} else if population > 1_000_000 {
    message = "\(population) is very large!!!"
} else {
    message = "\(population) is pretty big!"
}

message = population > 10_000 ? "\(population) is pretty big!" : "\(population) is a small town"


print(message)

hasPostOffice = false
if !hasPostOffice {
    print("There is no post office in town")
}

//: [Next](@next)
