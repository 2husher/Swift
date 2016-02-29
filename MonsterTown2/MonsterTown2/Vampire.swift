//
//  Vampire.swift
//  MonsterTown2
//
//  Created by X on 29/02/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

class Vampire: Monster {

    var vampires = [Vampire]()

    override func terrorizeTown() {
        town?.changePopulation(-1)
        vampires.append(Vampire())
    }

    func printVampireDescription() {
        print("Vampire with thralls of \(vampires)")
    }
}