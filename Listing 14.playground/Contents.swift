//: Playground - noun: a place where people can play

import UIKit

enum TextAlignment: Int {
    case Left    = 20
    case Right   = 30
    case Center  = 40
    case Justify = 50
}

var alignment: TextAlignment = TextAlignment.Left
var newAlignment = TextAlignment.Right
alignment = .Center

//if alignment == .Center {
//    print("We should center the text")
//}

switch alignment {
case .Left:
    print("Left aligned")
case .Right:
    print("Right aligned")
case .Center:
    print("Center aligned")
case .Justify:
    print("Justify aligned")
}

print("Left has raw value \(TextAlignment.Left.rawValue)")
print("Right has raw value \(TextAlignment.Right.rawValue)")
print("Center has raw value \(TextAlignment.Center.rawValue)")
print("Justify has raw value \(TextAlignment.Justify.rawValue)")
print("The alignment variable has raw value \(alignment.rawValue)")

let myRawValue = 100
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    print("successfully for \(myRawValue)")
} else {
    print("TextAlignment has no \(myRawValue)")
}

enum ProgrammingLanguage: String {
    case Swift// = "Swift"
    case Cpp// = "C++"
    case ObjectiveC = "Objective-C"
    case C = "C"
}

let myFavoriteLang = ProgrammingLanguage.Cpp
print("My favorite lang is \(myFavoriteLang.rawValue)")

enum LightBulb {
    case On
    case Off

    func tempForAmbientTemp(ambient: Double) -> Double {
        switch self {
        case .On:
            return ambient + 150.0
        case .Off:
            return ambient
        }
    }

    mutating func toggle() {
        switch self {
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }
}

var bulb = LightBulb.On
let ambientTemp:Double = 70.0

var bulbTemp = bulb.tempForAmbientTemp(ambientTemp)
print("Bulb temp is \(bulbTemp)")

bulb.toggle()
bulbTemp = bulb.tempForAmbientTemp(ambientTemp)
print("Bulb temp is \(bulbTemp)")

enum ShapeDimensions {
    case Point
    case Square(side: Double)
    case Rectangle(width: Double, height: Double)
    case RightTriangle(catOne: Double, catTwo: Double, hypo: Double)

    func area() -> Double {
        switch self {
        case .Point:
            return 0
        case let .Square(side):
            return side * side
        case let .Rectangle(width, height):
            return width * height
        case let .RightTriangle(catOne, catTwo, _):
            return catOne * catTwo / 2.0
        }
    }

    func perimeter() -> Double {
        switch self {
        case .Point:
            return 0
        case let .Square(side):
            return 4 * side
        case let .Rectangle(width, height):
            return 2 * (width + height)
        case let .RightTriangle(catOne, catTwo, hypo):
            return catOne + catTwo + hypo
        }
    }
}

var squareShape = ShapeDimensions.Square(side: 10.0)
var rectShape = ShapeDimensions.Rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.Point
var rightShape = ShapeDimensions.RightTriangle(catOne: 5.0, catTwo: 10.0, hypo: 11.1)

print("square's area is \(squareShape.area())")
print("rectangle area is \(rectShape.area())")
print("point area is \(pointShape.area())")
print("right area is \(rightShape.area())")

print("square's perimeter is \(squareShape.perimeter())")
print("rectangle perimeter is \(rectShape.perimeter())")
print("point perimeter is \(pointShape.perimeter())")
print("right perimeter is \(rightShape.perimeter())")

enum FamilyTree {
    case NoKnownPars
    indirect case OneKnownPar(name: String, ancestors: FamilyTree)
    indirect case TwoKnownPars(fatherName: String, fatherAncestors: FamilyTree,
                      motherName: String, motherAncestors: FamilyTree)
}

let fredAncestors = FamilyTree.TwoKnownPars(fatherName: "Nick", fatherAncestors: .OneKnownPar(name: "Beth", ancestors: .NoKnownPars), motherName: "Ann", motherAncestors: .NoKnownPars)
print(fredAncestors)










