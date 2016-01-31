//
//  Monster.swift
//  MonsterTown
//
//  Created by X on 31/01/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    var name: String = "Monster"

    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}