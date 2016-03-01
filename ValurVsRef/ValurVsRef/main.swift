//
//  main.swift
//  ValurVsRef
//
//  Created by X on 01/03/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

var str = "Hello, World!"
var strCopy: String = str
strCopy += " How are you?"
print(str)
print(strCopy)

class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}
let hecate = GreekGod(name: "Hecate")
let anotherHecate = hecate
anotherHecate.name = "Another Hecate"
print(hecate.name)
print(anotherHecate.name)

struct Pantheon {
    let chiefGod: GreekGod
    let dateCreated = NSDate()
}
let pantheon = Pantheon(chiefGod: hecate)
let zeus = GreekGod(name: "Zeus")
//pantheon.chiefGod = zeus
zeus.name = "Zeus Jr."
print(zeus.name)

print(pantheon.chiefGod.name)
let greekPantheon = pantheon
hecate.name = "Trivia"
print(greekPantheon.chiefGod.name)
print(greekPantheon.dateCreated)

let athena = GreekGod(name: "Athena")
let gods = [athena, hecate, zeus]
let godsCopy = gods
gods.last?.name = "Jupiter"
gods.map { print($0.name) }
godsCopy.map { print($0.name) }





