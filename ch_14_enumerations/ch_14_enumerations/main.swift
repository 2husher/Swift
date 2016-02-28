//
//  main.swift
//  ch_14_enumerations
//
//  Created by X on 26/02/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

enum TextAlignment: Int {
    case Left    = 20
    case Right   = 30
    case Center  = 40
    case Justify = 50
}

var alignment: TextAlignment = TextAlignment.Left
print(alignment)
alignment = TextAlignment.Right
print(alignment)
alignment = .Center
print(alignment)
alignment = .Justify

if alignment == .Right {
    print("We should turn right")
}
else if alignment == .Center {
    print("We should turn center")
}
else if alignment == .Left {
    print("We should turn left")
}

switch alignment {
case .Right:
    print("We should turn right again")
case .Left:
    print("We should turn left again")
case .Center:
    print("We should turn center again")
case .Justify:
    print("We should not turn")
}

let rawValue = 50
if let alignment = TextAlignment(rawValue: rawValue) {
    print("Successfully converted \(rawValue) to \(alignment)")
}
else {
    print("No responding value for \(rawValue)")
}

enum ProgrammingLanguage: String {
    case Cpp = "C++"
    case ObjectiveC = "Objective-C"
    case Java
    case Swift
}
let myCurrProgLang = ProgrammingLanguage.Swift
print("My current prog lang is \(myCurrProgLang.rawValue)")


enum LightBulb {
    case On
    case Off

    func surfaceTempForAmbientTemp(ambient: Double) -> Double {
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
let ambientTemp = 77.0
var bulbTemp = bulb.surfaceTempForAmbientTemp(ambientTemp)
print("The bulb's temp is \(bulbTemp)")
bulb.toggle()
bulbTemp = bulb.surfaceTempForAmbientTemp(ambientTemp)
print("The bulb's temp is \(bulbTemp)")


enum ShapeDimensions {
    case Point
    case Square(Double)
    case Rectangle(width:Double, height: Double)
    case RightTriangle(adjacent:Double, opposite:Double, hypotenuse:Double)

    func area() -> Double {
        switch self {
        case .Point:
            return 0
        case let .Square(side):
            return side * side
        case let .Rectangle(width, height):
            return width * height
        case let .RightTriangle(adjacent: a, opposite: b, hypotenuse: _):
            return a * b / 2.0
        }
    }

    func perimeter() -> Double {
        switch self {
        case .Point:
            return 0
        case let .Square(side):
            return side * 4
        case let .Rectangle(width: w, height: h):
            return (w + h) * 2
        case let .RightTriangle(adjacent: a, opposite: b, hypotenuse: c):
            return a + b + c
        }
    }
}

var squareShape = ShapeDimensions.Square(10.0)
var rectShape = ShapeDimensions.Rectangle(width: 10.0, height: 5.0)
var pointShape = ShapeDimensions.Point
var triangleShape = ShapeDimensions.RightTriangle(adjacent: 3, opposite: 4, hypotenuse: 5)

print("Square's area is \(squareShape.area())")
print("Rectangle's area is \(rectShape.area())")
print("Point's area is \(pointShape.area())")
print("Right triangle's area is \(triangleShape.area())")

print("Square's perimeter is \(squareShape.perimeter())")
print("Rectangle's perimeter is \(rectShape.perimeter())")
print("Point perimeter is \(pointShape.perimeter())")
print("Right triangle's perimeter is \(triangleShape.perimeter())")

enum FamilyTree {
    case NoParents
    indirect case OneParent(name: String, ancestors: FamilyTree)
    indirect case TwoParents(fatherName: String, fatherAncestors: FamilyTree,
                    motherName: String, motherAncestors: FamilyTree)
}

let fredFamilyTree = FamilyTree.TwoParents(
    fatherName: "John", fatherAncestors: .OneParent(name: "Anna", ancestors: .NoParents),
    motherName: "Elsa", motherAncestors: .NoParents)
print(fredFamilyTree)














