//
//  Zombie.swift
//  MonsterTown2
//
//  Created by X on 29/02/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walkWithLimp = true
    private(set) var isFallingApart = false

    override class var spookyNoise: String {
        return "Brains..."
    }

    final override func terrorizeTown() {
        let killedPopulation = 10
//        if let population = town?.population where population > killedPopulation {
//            town?.changePopulation(-killedPopulation)
//        }
//        else if let population = town?.population where population > 0 {
//            town?.changePopulation(-population)
//        }
        guard let population = town?.population else {
            super.terrorizeTown()
            return
        }
        if !isFallingApart {
            if population > killedPopulation {
                town?.changePopulation(-killedPopulation)
            }
            else if population > 0 {
                town?.changePopulation(-population)
            }
        }
        super.terrorizeTown()
    }

    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walkWithLimp = walksWithLimp
    }
}