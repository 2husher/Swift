//: Playground - noun: a place where people can play

import UIKit

var dict1: Dictionary<String, Double> = [:]
var dict2: [String:Double] = [:]
var dict3 = Dictionary<String, Double>()
var dict4 = [String:Double]()

var movieRatings = ["Matrix" : 8, "Harry Potter" : 7, "Dark City" : 5];
print("I have rated \(movieRatings.count) movies.")
let matrixRatings = movieRatings["Matrix"]
movieRatings["Matrix"] = 9
movieRatings
var finalRating = movieRatings["Final destination"]
let oldRating1: Int? = movieRatings.updateValue(6, forKey: "Dark City")
let oldRating2 = movieRatings.updateValue(4, forKey: "Twilight")
if let lastRating = oldRating1, currentRating = movieRatings["Matrix"], anotherRating = movieRatings["Twilight"] {
    print("Old rating: \(lastRating), current rating: \(currentRating), another rating: \(anotherRating)")
}
if let finalRating = movieRatings["Final destination"] {
    print("Final rating: \(finalRating)")
}
movieRatings["Deadpool"] = 8
movieRatings
movieRatings.removeValueForKey("Dark City")
movieRatings
movieRatings["Harry Potter"] = nil
movieRatings
for (key,value) in movieRatings {
    print("The movie \(key) was rated \(value)")
}

for movie in movieRatings.keys {
    print("User has rated \(movie)")
}

for rating in movieRatings.values {
    print("Rating is \(rating)")
}

let watchedMovies = Array(movieRatings.keys)

var countriesZipCodes = [
    "Russia" : [233, 234, 235, 267, 268],
    "Belarus" : [104, 303, 305, 809, 810],
    "Spain" : [45, 46, 47, 48, 50]
]
for (country, zipCode) in countriesZipCodes {
    print("\(country) has the following zipCodes: \(zipCode)")
}









