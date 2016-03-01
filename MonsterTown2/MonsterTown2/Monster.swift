//
//  Monster.swift
//  MonsterTown2
//
//  Created by X on 29/02/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    var name: String!

    static let isTerrifying = true

    class var spookyNoise: String {
        return "Grrr..."
    }

    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }

    required init?(town: Town?, monsterName: String) {
        if monsterName.isEmpty {
            name = nil
            return nil
        }
        self.town = town
        name = monsterName
    }

    func terrorizeTown() {
        if let town = town {
            print("Monster terrorizes \(town)")
        }
        else {
            print("Monster hasn't town to terrorize")
        }
    }
}