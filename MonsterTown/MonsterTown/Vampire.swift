//
//  Vampire.swift
//  MonsterTown
//
//  Created by X on 31/01/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

class Vampire: Monster {
    override func terrorizeTown() {
        let thrall: Vampire = Vampire()
        thralls.append(thrall)
        town?.population -= 1
    }
}