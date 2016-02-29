//
//  Town.swift
//  MonsterTown2
//
//  Created by X on 29/02/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

struct Town {
    static let region = "South"

    var population = 5422 {
        didSet(oldPopulation) {
            if population < oldPopulation {
                print("NOTE: Population changed from \(oldPopulation) to \(population)")
                mayor.claim()
            }
        }
    }
    
    var numberOfStoplights = 4

    var mayor = Mayor()

    enum Size {
        case Small
        case Medium
        case Large
    }

    var townSize: Size {
        get {
            switch self.population {
            case 0...10_000:
                return Size.Small

            case 10_001...100_000:
                return Size.Medium

            default:
                return Size.Large
            }
        }
    }

    func printTownDescription() {
        print("Town with population \(population) and \(numberOfStoplights) stoplights")
    }

    mutating func changePopulation(amount: Int) {
        population += amount
    }
}