import UIKit

// Arrays
// Creating an array
var shoppingList = ["Eggs","Milk"]

// count returns the number of items in an array
shoppingList.count

// isEmpty returns true if an array is empty
shoppingList.isEmpty

// Add "Cooking Oil" to the end of the array
shoppingList.append("Cooking Oil")
shoppingList

// Add "Chicken" at index 1 in the array
shoppingList.insert("Chicken", at: 1)
shoppingList

// Access the element at index 2 ("Milk")
shoppingList[2]

// Assign a new value, "Soy Milk" to index 2
shoppingList[2] = "Soy Milk"
shoppingList

// Remove the item at index 1, "Chicken", from the array
shoppingList.remove(at: 1)
shoppingList

// Iterating over an array
for shoppingListItem in shoppingList {
    print(shoppingListItem)
}

// one-sided range operators
for shoppingListItem in shoppingList[1...] {
    print(shoppingListItem)
}

// Dictionaries
// Creating a dictionary
var contactList = ["Shah" : "+60123456789", "Akhil" : "+223456789" ]

// count returns the number of items in a dictionary
contactList.count

// isEmpty returns true if a dictionary is empty
contactList.isEmpty

// Add a new item, with key "Kajal" and value "+0229876543"
contactList["Kajal"] = "+0229876543"
contactList

// Access the element with the key "Shah"
contactList["Shah"]

// Assign a new value, "+60126789345" to key "Shah"
contactList["Shah"] = "+60126789345"
contactList

// Removing "Kajal" from the dictionary
var oldDictValue = contactList.removeValue(forKey: "Kajal")
oldDictValue
contactList

// Iterating over a dictionary
for (name, contactNumber) in contactList {
    print("\(name) : \(contactNumber)")
}

// Sets
// Creating a set
var movieGenres: Set = ["Horror", "Action", "Romantic Comedy" ]

// count returns the number of items in a set
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
