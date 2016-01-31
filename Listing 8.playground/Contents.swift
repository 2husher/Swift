//: Playground - noun: a place where people can play

import UIKit

var errorCodeString:String?
errorCodeString = "404"
print(errorCodeString)
print(errorCodeString!)

var errorDescription: String?

if let theError = errorCodeString, errorCodeInteger = Int(theError)
    where errorCodeInteger == 404 {
        errorDescription = "\(errorCodeInteger + 200): the request resource was not found."
}

var upCaseErrorDescription = errorDescription?.uppercaseString
upCaseErrorDescription?.appendContentsOf(" PLEASE TRY AGAIN")
upCaseErrorDescription

let arr:[Int]
arr = [1,2,3]
print(arr)


let description:String
if let errorDescription = errorDescription {
    description = errorDescription
} else {
    description = "No error"
}

let newDescription = errorDescription ?? "No error"

//let optionalString:String?
//optionalString = nil
//print(optionalString!)
