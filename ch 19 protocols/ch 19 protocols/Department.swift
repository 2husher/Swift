//
//  Department.swift
//  ch 19 protocols
//
//  Created by X on 04/03/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

struct Person {
    let name: String
    let age: Int
    let yearOfExperience: Int
}

struct Department: TabularDataSource, CustomStringConvertible {
    let name: String
    var people = [Person]()

    var description: String {
        return "Department (\(name))"
    }

    init(name: String) {
        self.name = name
    }

    mutating func addPerson(person: Person) {
        people.append(person)
    }

    var numberOfRows: Int {
        return people.count
    }

    var numberOfColumns: Int {
        return 2
    }

    func labelForRow(row: Int) -> String {
        return people[row].name
    }

    func labelForColumn(column: Int) -> String {
        switch column {
        case 0: return "Age"
        case 1: return "Years of Experience"
        default: fatalError("Invalid column!")
        }
    }

    func itemForRow(row: Int, column: Int) -> String {
        let person = people[row]
        switch column {
        case 0: return "\(person.age)"
        case 1: return "\(person.yearOfExperience)"
        default: fatalError("Invalid column!")
        }
    }
}