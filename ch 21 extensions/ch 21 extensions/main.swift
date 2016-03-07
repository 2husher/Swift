//
//  main.swift
//  ch 21 extensions
//
//  Created by X on 05/03/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

typealias Velocity = Double

extension Velocity {
    var kph: Velocity { return self * 1.60934 }
    var mph: Velocity { return self }
}

protocol VehicleType {
    var topSpeed: Velocity { get }
    var numberOfDoors: Int { get }
    var hasFlatbed: Bool { get }
}

struct Car {
    let make: String
    let model: String
    let year: Int
    let color: String
    let nickname: String
    let numberOfDoors: Int
    var gasLevel: Double {
        willSet {
            precondition(newValue >= 0.0 && newValue <= 1.0, "New value must be between 0 and 1.")
        }
    }
}

extension Car: VehicleType {
    var topSpeed: Velocity { return 180 }
    var hasFlatbed: Bool { return false }
}

extension Car {
    init(carMake: String, carModel: String, carYear: Int) {
        self.init(make: carMake,
            model: carModel,
            year: carYear,
            color: "Black",
            nickname: "N/A",
            numberOfDoors: 2,
            gasLevel: 1.0)
    }
}

var carMemorized = Car(make: "Audi", model: "Globe", year: 1998, color: "Red", nickname: "N/A", numberOfDoors: 4, gasLevel: 0.9)
carMemorized.gasLevel = 1.0

var c = Car(carMake: "Ford", carModel: "Fusion", carYear: 2013)

extension Car {
    enum CarKind: CustomStringConvertible {
        case Coupe, Sedan
        var description: String {
            switch self {
            case .Coupe:
                return "Coupe"

            case .Sedan:
                return "Sedan"
            }
        }
    }

    var kind:CarKind {
        if numberOfDoors == 2 {
            return .Coupe
        }
        else {
            return .Sedan
        }
    }
}

print(c.kind.description)

extension Car {
    mutating func emptyGas(amount: Double) {
        precondition(amount > 0.0 && amount <= 1.0, "New value must be between 0 and 1.")
        precondition(amount <= gasLevel, "Amount gas to remove must be less than or equal to current gas level.")
        gasLevel -= amount
    }

    mutating func fillGas() {
        gasLevel = 1.0
    }
}
c.emptyGas(0.3)
print(c.gasLevel)
c.emptyGas(0.5)
print(c.gasLevel)
c.fillGas()
print(c.gasLevel)

extension Int {
    var timesFive: Int {
        return self * 5
    }
}
print(5.timesFive)


