//
//  main.swift
//  MonsterTown2
//
//  Created by X on 29/02/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

var town = Town(population: 10_000, stoplights: 6)
let ts = town?.townSize
print(ts)
town?.printTownDescription()
town?.changePopulation(1_000_000)
town?.printTownDescription()
print("Size: \(town?.townSize), population: \(town?.population)")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}

//var mayor = Mayor()
//print(mayor.anxietyLevel)

let gm = Monster(town: town, monsterName: "Monster")
gm?.terrorizeTown()

var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: town, monsterName: "Fred")
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printTownDescription()

fredTheZombie?.changeName("Fred the Zombie", walksWithLimp: false)

print("Fred the Zombie victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
print("Victim pool: \(fredTheZombie?.victimPool), population: \(fredTheZombie?.town?.population)")

var convenientZombie = Zombie(limp: true, fallingApart: false)

print("======== new town ==========")
var newTown = Town(population: 5422, stoplights: 4)
newTown?.changePopulation(-5410)
newTown?.printTownDescription()

fredTheZombie?.town = newTown
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printTownDescription()

fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printTownDescription()
fredTheZombie = nil

print("======== vampire ==========")
var vampireTown = Town(population: 100, stoplights: 3)
vampireTown?.printTownDescription()

let vampire = Vampire(town: vampireTown, monsterName: "Vampire")
vampire?.town = vampireTown
vampire?.printVampireDescription()

for _ in 1...4 {
    vampire?.terrorizeTown()
    vampire?.town?.printTownDescription()
    vampire?.printVampireDescription()
}

print("======== function curring ==========")
func greetName(name: String, withGreeting greeting: String) -> String {
    return "\(greeting), \(name)"
}
let personalGreeting = greetName("Alex", withGreeting: "Hello")
print(personalGreeting)

func greetingForName(name: String) -> (String) -> String {
    func greeting(greeting: String) -> String {
        return "\(greeting), \(name)"
    }
    return greeting
}
let greeterFunction = greetingForName("Alex")
let theGreeting = greeterFunction("Hello")
print(theGreeting)

func greeting(greeting: String)(name: String) -> String {
    return "\(greeting), \(name)"
}
let friendlyGreeting = greeting("Hello")
let newGreeting = friendlyGreeting(name: "Alex")
print(newGreeting)

struct Person {
    var firstName  = "Bruce"
    var secondName = "Wane"

    mutating func changeName(fn: String, ln: String) {
        firstName  = fn
        secondName = ln
    }
}
var p = Person()
//let changer = Person.changeName
//changer(&p)("Peter", ln: "Parker")
p.changeName("Peter", ln: "Parker")
print(p)


















