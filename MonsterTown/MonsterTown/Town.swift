//
//  Town.swift
//  MonsterTown
//
//  Created by X on 31/01/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

struct Town {
    var population: Int = 19 //5422
    var numberOfStopLights: Int = 4

    func printTownDescription() {
        print("Population: \(population), number of stop lights: \(numberOfStopLights)")
    }

    mutating func changePopulation(amount: Int) {
        population += amount
    }
}
