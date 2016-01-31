//
//  Zombie.swift
//  MonsterTown
//
//  Created by X on 31/01/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }

    var walksWithLimp = true
    private(set) var isFallingApart = false

    final override func terrorizeTown() {
        if !isFallingApart {
            let population: Int = (town?.population)!
            if population > 10 {
                town?.changePopulation(-10)
            } else if (population < 10) && (population > 0) {
                town?.changePopulation(-population)
            }
        }
        super.terrorizeTown()
    }

    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name;
        self.walksWithLimp = walksWithLimp;
    }

    func printTown() {
        print(myTown)
    }
}