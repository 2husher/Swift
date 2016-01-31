//: Playground - noun: a place where people can play

import UIKit

var bucketList: Array<String> = ["Climb Mt. Everest"]

var bucketList2: [String]

var bucketList3: [String] = ["Climb Mt. Everest"]

var bucketList4 = ["Climb Mt. Everest"]

var bucketList5 = Array<String>()

var bucketList6 = [String]()

var newItems = [
    "Fly hot air balloon to Fiji",
    "Watch LotR in one day",
    "Go on a walkabout",
    "Scuba dive",
    "Find a triple rainbow"
]
//for item in newItems {
//    bucketList.append(item)
//}
bucketList += newItems
//bucketList.append("Fly hot air balloon to Fiji")
//bucketList.append("Watch LotR in one day")
//bucketList.append("Go on a walkabout")
//bucketList.append("Scuba dive")
//bucketList.append("Find a triple rainbow")
bucketList.removeAtIndex(2)
bucketList
print(bucketList.count)
print(bucketList[0...2])
bucketList[2] += " in Australia"
bucketList
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList.insert("Toboggan across Alaske", atIndex: 2)
bucketList

var myronsList = [
    "Climb Mt. Kilimanjaro",
    "Fly hot air balloon to Fiji",
    "Toboggan across Alaske",
    "Go on a walkabout in Australia",
    "Scuba dive",
    "Find a triple rainbow"
]

var equal = (bucketList == myronsList)

let lunches = [
    "Milk",
    "Bread",
    "Juice"
]

var toDoList = [
    "Take out garbage",
    "Pay bills",
    "Cross off finished items"
]
toDoList.isEmpty
var tmp = [String]()
for toDos in toDoList {
    tmp.insert(toDos, atIndex: 0)
}
toDoList = tmp
toDoList
toDoList = toDoList.reverse()
print(toDoList)








