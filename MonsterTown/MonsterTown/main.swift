//
//  main.swift
//  MonsterTown
//
//  Created by X on 31/01/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

var myTown = Town()
myTown.major = Major()
let ts: Town.Size = myTown.townSize
print(ts)
myTown.printTownDescription()
myTown.changePopulation(10_000_000)
print("Town size \(ts) population \(myTown.population)")
myTown.printTownDescription()

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()

fredTheZombie.town?.printTownDescription()
fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)

// MARK: can get myTown from inside of Zombie
fredTheZombie.printTown()

print(fredTheZombie.walksWithLimp)

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool)")
print(Zombie.spookyNoise)
if (Zombie.isTerrifying) {
    print("Run away")
}
print(fredTheZombie.walksWithLimp)
print(fredTheZombie.isFallingApart)
//fredTheZombie.isFallingApart = true

print("------------------------- Chapter 15 Challenge: Vampires -------------------------")
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

//print(fredTheZombie.town?.major?.anxietyLevel)
//print(dracula.town?.major?.anxietyLevel)








