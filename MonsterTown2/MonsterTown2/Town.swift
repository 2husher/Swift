//
//  Town.swift
//  MonsterTown2
//
//  Created by X on 29/02/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

struct Town {
    let region: String

//    var population = 5422 {
    var population: Int {
        didSet(oldPopulation) {
            if population < oldPopulation {
                print("NOTE: Population changed from \(oldPopulation) to \(population)")
                mayor.claim()
            }
        }
    }
    
    var numberOfStoplights: Int

    var mayor = Mayor()

    init?(region: String, population: Int, stoplights: Int, mayor: Mayor) {
        if population <= 0 {
            return nil
        }
        self.region = region
        self.population = population
        numberOfStoplights = stoplights
        self.mayor = mayor
    }

    init?(population: Int, stoplights: Int) {
        self.init(region: "N/A", population: population, stoplights: stoplights, mayor: Mayor())
    }

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
        print("Town with population \(population) and \(numberOfStoplights) stoplights, region \(region)")
    }

    mutating func changePopulation(amount: Int) {
        population += amount
    }
}