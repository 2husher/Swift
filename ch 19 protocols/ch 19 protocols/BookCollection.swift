//
//  BookCollection.swift
//  ch 19 protocols
//
//  Created by X on 04/03/16.
//  Copyright © 2016 Alex Izotov. All rights reserved.
//

import Foundation

struct Book {
    let title: String
    let author: String
    let averageReview: Int
}

struct BookCollection: TabularDataSource, CustomStringConvertible {
    let name: String
    var books = [Book]()

    var description: String {
        return "Book Collection (\(name))"
    }

    init(name: String) {
        self.name = name
    }

    mutating func addBook(book: Book) {
        books.append(book)
    }

    var numberOfRows: Int {
        return books.count
    }

    var numberOfColumns: Int {
        return 3
    }

    func labelForRow(row: Int) -> String {
        return books[row].title
    }

    func labelForColumn(column: Int) -> String {
        switch column {
        case 0: return "Title"
        case 1: return "Author"
        case 2: return "Average Review"
        default: fatalError("Invalid column!")
        }
    }

    func itemForRow(row: Int, column: Int) -> String {
        let book = books[row]
        switch column {
        case 0: return book.title
        case 1: return book.author
        case 2: return "\(book.averageReview)"
        default: fatalError("Invalid column!")
        }
    }
}