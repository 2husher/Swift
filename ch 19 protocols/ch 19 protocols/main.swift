//
//  main.swift
//  ch 19 protocols
//
//  Created by X on 03/03/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

protocol TabularDataSource {
    var numberOfRows: Int { get }
    var numberOfColumns: Int { get }

    func labelForRow(row: Int) -> String
    func labelForColumn(column: Int) -> String

    func itemForRow(row: Int, column: Int) -> String
}

func padding(amount: Int) -> String {
    var paddingString = ""
    for _ in 0..<amount {
        paddingString += " "
    }
    return paddingString
}

func printTable(dataSource: protocol<TabularDataSource, CustomStringConvertible>) {

    print("Table: \(dataSource.description)")

    // get row labels names and widths
    let rowLabels = (0..<dataSource.numberOfRows).map { dataSource.labelForRow($0) }

    let rowLabelWidths = rowLabels.map { $0.characters.count }

    guard let maxRowLabelWidth = rowLabelWidths.maxElement() else {
        return
    }

    var firstRow: String = padding(maxRowLabelWidth) + " |"

    //get column labels names and widths
    let columnLabels = (0..<dataSource.numberOfColumns).map {
        dataSource.labelForColumn($0)
    }

    let columnLabelWidths = columnLabels.map { "\($0) |".characters.count }

    // get max column widths
    var maxColumnWidths = columnLabelWidths

    for i in 0..<dataSource.numberOfColumns {
        var maxWidth = maxColumnWidths[i]

        for j in 0..<dataSource.numberOfRows {
            let item = dataSource.itemForRow(j, column: i)
            let itemWidth = " \(item) |".characters.count
            if itemWidth > maxWidth {
                maxWidth = itemWidth
            }
        }
        maxColumnWidths[i] = maxWidth
    }

    // print table
    for i in 0..<columnLabels.count {
        let paddingAmount = maxColumnWidths[i] - columnLabelWidths[i]
        let columnHeader = padding(paddingAmount) + columnLabels[i] + " |"
        firstRow += columnHeader
    }
    print(firstRow)

    for i in 0..<dataSource.numberOfRows {

        let paddingAmount = maxRowLabelWidth - rowLabelWidths[i]
        var out = rowLabels[i] + padding(paddingAmount) + " |"

        for j in 0..<dataSource.numberOfColumns {
            let item = dataSource.itemForRow(i, column: j)
            let itemString = " \(item) |"
            let paddingAmount = maxColumnWidths[j] - itemString.characters.count
            out += padding(paddingAmount) + itemString
        }

        print(out)
    }
}

var department = Department(name: "Engineering")
department.addPerson(Person(name: "Joe", age: 3000, yearOfExperience: 6))
department.addPerson(Person(name: "Karen", age: 40, yearOfExperience: 18))
department.addPerson(Person(name: "Fred", age: 50, yearOfExperience: 20))

printTable(department)

print("")

var bookCollection = BookCollection(name: "Fiction")
bookCollection.addBook(Book(title: "The Island of Dr. Moreau", author: "H. G. Wells", averageReview: 7))
bookCollection.addBook(Book(title: "The Memoirs of Sherlock Holmes", author: "Sir Arthur Conan Doyle", averageReview: 9))
bookCollection.addBook(Book(title: "Dracula", author: "Bram Stoker", averageReview: 8))

printTable(bookCollection)



























