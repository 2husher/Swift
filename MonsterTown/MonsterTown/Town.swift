//
//  Town.swift
//  MonsterTown
//
//  Created by X on 31/01/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

struct Town {
    static let region: String = "South"
    var major: Major?
    var population: Int = 5422 {
        didSet(oldPopulation) {
            if population < oldPopulation {
                print("The population has changed from \(oldPopulation) to \(population)")
                major?.makeStatement()
            }
        }
    }
    var numberOfStopLights: Int = 4

    enum Size {
        case Small
        case Medium
        case Large
    }

    var townSize: Size {
        get {
            switch population {
            case 0...10_000:
                print(population)
                return .Small

            case 10_001...100_000:
                print(population)
                return .Medium

            default:
                print(population)
                return .Large
            }
        }
    }

    func printTownDescription() {
        print("Population: \(population), number of stop lights: \(numberOfStopLights)")
    }

    mutating func changePopulation(amount: Int) {
        population += amount
    }
}
