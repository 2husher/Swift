//: [Previous](@previous)

import Foundation

var statusCode = 418
var errorString: String = "The request failed with the error:"

switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)"

case 204:
    errorString += " Successful but not content, \(statusCode)"

case 300...307:
    errorString += " Redirection, \(statusCode)"

case 400...417:
    errorString += " Client error, \(statusCode)"

case 500...505:
    errorString += " Server error, \(statusCode)"

case let unknownCode where (200 <= unknownCode && unknownCode < 300) ||
    unknownCode > 505:
    errorString += " \(unknownCode) is not a known error code"

default:
    errorString = "Unexpected error occured"
}

print(errorString)

let error = (statusCode, errorString)
error.0
error.1

let errorNew = (code: statusCode, error: errorString)
errorNew.code
errorNew.error

let firstErrorCode = 300
let secondErrorCode = 400
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
    print("No items found")
case (404, _):
    print("First item not found")
case (_, 404):
    print("Second item not found")
default:
    print("All items found")
}

let age = 25
if case 18...35 = age {
    print("Cool demographic!")
}

switch age {
case 18...35:
    print("Cool demographic!")
default:
    break
}

if case 18...35 = age where age >= 21 {
    print("In cool demographic and of drinking age")
}

let point = (x: 1, y: 4)

switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("The point is in the first quadrant")
default:
    print("Not in the first quadrant")
}

//: [Next](@next)
