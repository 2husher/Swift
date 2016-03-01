//
//  Zombie.swift
//  MonsterTown2
//
//  Created by X on 29/02/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walkWithLimp: Bool
    private(set) var isFallingApart: Bool

    override class var spookyNoise: String {
        return "Brains..."
    }

    init?(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walkWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }

    convenience init?(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walkWithLimp {
            print("This zombie has a bad knee")
        }
    }

    convenience required init?(town: Town?, monsterName: String) {
        self.init(limp: false, fallingApart: false, town: town, monsterName: monsterName)
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

    deinit {
        print("Zombie \(name) is no longer with us")
    }
}