//
//  main.swift
//  MonsterTown
//
//  Created by X on 31/01/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

var myTown = Town()
myTown.printTownDescription()
//myTown.changePopulation(500)
myTown.printTownDescription()

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()

fredTheZombie.town?.printTownDescription()
fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)

// MARK: can get myTown from inside of Zombie
fredTheZombie.printTown()

print(fredTheZombie.walksWithLimp)

var thralls:[Vampire] = []
print(thralls)
let dracula: Vampire = Vampire()
dracula.town = myTown
dracula.terrorizeTown()
print("dracula's town \(dracula.town)")
print("thralls \(thralls)")
dracula.terrorizeTown()
print("dracula's town \(dracula.town)")
print("thralls \(thralls)")









