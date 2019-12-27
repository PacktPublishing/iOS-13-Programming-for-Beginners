import UIKit

var str = "Hello, playground"

// if statements execute code in curly braces if the condition is true
let isPictureVisible = true
// if the value is changed to false nothing will be printed.
if isPictureVisible {
    print("Picture is visible")
}

// isRestaurantFound == false returns true, so the print statement is executed
let isRestaurantFound = false
// if the value is changed to true nothing will be printed
if isRestaurantFound == false {
    print("Restaurant was not found")
}

// if-else statement. Code after the else keyword is executed if the condition is false
let drinkingAgeLimit = 21
var customerAge = 19
// experiment by changing the customer age to a value greater than 21
if customerAge < drinkingAgeLimit {
    print("Under age limit")
} else {
    print("Over age limit")
}

// Implementing a traffic light program using multiple if statements
var trafficLight = "Yellow"
// Try changing the value of trafficLight to get different results
if trafficLight == "Red" {
    print("Stop")
} else if trafficLight == "Yellow" {
    print("Caution")
} else if trafficLight == "Green" {
    print("Go")
} else {
    print("Invalid Color")
}

// the same traffic light program using a switch statement
// Note: you can't fall-through to the next case once a case is matched
// Note: switch statements must cover all possible cases
trafficLight = "Yellow"
switch trafficLight {
case "Red":
    print("Stop")
case "Yellow":
    print("Caution")
case "Green":
    print("Go")
default:
    print("Invalid color")
}

// optionals
var spouseName: String?
spouseName = "Lydia"
print(spouseName)
// optional binding
if let spouse = spouseName {
    let greeting = "Hello, " + spouse
    print(greeting)
}

