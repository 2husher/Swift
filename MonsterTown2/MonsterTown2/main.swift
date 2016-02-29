//
//  main.swift
//  MonsterTown2
//
//  Created by X on 29/02/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

var town = Town()
let ts = town.townSize
print(ts)
town.printTownDescription()
town.changePopulation(1_000_000)
town.printTownDescription()
print("Size: \(town.townSize), population: \(town.population)")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}

//var mayor = Mayor()
//print(mayor.anxietyLevel)

let gm = Monster()
gm.town = town
gm.terrorizeTown()

let fredTheZombie = Zombie()
fredTheZombie.town = town
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()

fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)

print("Fred the Zombie victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool), population: \(fredTheZombie.town?.population)")

print("======== new town ==========")
var newTown = Town()
newTown.changePopulation(-5410)
newTown.printTownDescription()

fredTheZombie.town = newTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()

fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()

print("======== vampire ==========")
var vampireTown = Town()
vampireTown.printTownDescription()

let vampire = Vampire()
vampire.town = vampireTown
vampire.printVampireDescription()

for _ in 1...4 {
    vampire.terrorizeTown()
    vampire.town?.printTownDescription()
    vampire.printVampireDescription()
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


















