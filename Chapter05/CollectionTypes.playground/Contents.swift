import UIKit

// Sets
// Creating an set
var movieGenres: Set = ["Horror", "Action", "Romantic Comedy" ]

// count returns the number of items in an set
movieGenres.count

// isEmpty returns true if a set is empty
movieGenres.isEmpty

// Add "War" to the set
movieGenres.insert("War")
movieGenres

// Check if the set contains "War"
movieGenres.contains("War")

// Remove "Action" from the set
var oldSetValue = movieGenres.remove("Action")
oldSetValue
movieGenres

// Iterating over a set
for genre in movieGenres {
print(genre)
}

// Set operations
// movieGenres contains "Horror", "Romantic Comedy", "War"
let movieGenres2: Set = ["Science Fiction", "War", "Fantasy"]

// union
movieGenres.union(movieGenres2)
// ["Horror", "Romantic Comedy", "War", "Science Fiction", "Fantasy"]

// intersection
movieGenres.intersection(movieGenres2)
// ["War"]

// subtracting
movieGenres.subtracting(movieGenres2)
// ["Horror", "Romantic Comedy"]

// symmetricDifference
movieGenres.symmetricDifference(movieGenres2)
// ["Horror", "Romantic Comedy", "Science Fiction", "Fantasy"]

// Set membership and equality
// movieGenres contains "Horror", "Romantic Comedy", "War"
// movieGenres2 contains "Science Fiction", "War", "Fantasy"
let movieGenresSubset: Set = ["Horror", "Romantic Comedy"]
let movieGenresSuperset: Set = ["Horror", "Romantic Comedy", "War", "Science Fiction", "Fantasy"]
let movieGenresDisjoint: Set = ["Bollywood"]

movieGenres == movieGenres2
// false
movieGenresSubset.isSubset(of: movieGenres)
// true
movieGenresSuperset.isSuperset(of: movieGenres)
// true
movieGenresDisjoint.isDisjoint(with: movieGenres)
// true
