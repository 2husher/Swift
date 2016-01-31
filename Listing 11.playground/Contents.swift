//: Playground - noun: a place where people can play

import UIKit

//var groceryBag = Set<String>()
//
//groceryBag.insert("Apples")
//groceryBag.insert("Oranges")
//groceryBag.insert("Pineapples")

//var groceryBag = Set(["Apples", "Oranges", "Pineapples"])
var groceryBag: Set = ["Apples", "Oranges", "Pineapples"]

for food in groceryBag {
    print(food)
}

let hasBananas = groceryBag.contains("Bananas")
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
var commonGroceryBag = groceryBag.union(friendsGroceryBag)
groceryBag.unionInPlace(friendsGroceryBag)
commonGroceryBag
let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersect(roommatesGroceryBag)
commonGroceryBag.intersectInPlace(roommatesGroceryBag)


let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjointWith(roommatesSecondBag)



let myColors = Set(["yellow", "blue"])
let yourColors = Set(["yellow", "white", "blue", "red"])
yourColors.isSupersetOf(myColors)
myColors.isSubsetOf(yourColors)







