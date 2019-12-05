import UIKit

// Data types

// Examples of integers
42
-23

// Examples of floating-point numbers
3.14159
0.1
-273.15

// Examples of booleans
true
false

// Examples of strings
"hello, world"
"albatross"

// Constants and variables

// Examples of constants
let theAnswerToTheUltimateQuestion = 42
let pi = 3.14159
let myName = "Ahmad Sahar"

// Examples of variables
var currentTemperatureInCelsius = 27
var myAge = 50
var myLocation = "home"

// Value of a constant can't be changed once it is set
let isRaining = true
// Uncomment the next line to see the error
// isRaining = false

// Type inference
// Note there is no type annotation. Hold down option and click on the variable or constant name to disclose the type
let cuisine = "American"

// Type annotation
var restaurantRating: Double = 3

// Type safety
// Uncomment the line to see the error
//restaurantRating = "Good"

// Operators

// Arithmetic Operators
// (+) operator for addition
let sum = 23 + 20
// (-) operator for subtraction
let result = 32 - sum
// (*) operator for multiplication
let total = result * 5
// (/) operator for division
let divide = total/10
// Note result is 5 instead of 5.5, that's because both total and 10 are integers.

// Operators can only work with operands of the same type
let a = 12
let b = 12.0
// Uncomment the next line to see the error
//let c = a + b
let d = Double(a) + b

// Compound assignment operators
var x = 1
x += 2
// x is now equal to 3
x -= 1
// x is now equal to 2

// Comparison operators
1 == 1  // equal to, true because 1 is equal to 1
2 != 2  // not equal to, true because 2 is not equal to 1
2 > 1   // greater than, true because 2 is greater than 1
1 < 2   // less than, true because 1 is less than 2
1 >= 1  // greater or equal to, true because 1 is greater than or equal to 1
2 <= 1  // less or equal to, false because 2 is not less than or equal to 1

// Logical operators
(1 == 1) && (2 == 2) // logical AND operator, true because both operands are true, so true AND true returns true
(1 == 1) && (2 != 2) // logical AND operator, false because second operand is false, so true AND false returns false
(1 == 1) || (2 == 2) // logical OR operator, true because both operands are true, so true OR true returns true
(1 == 1) || (2 != 2) // logical OR operator, true because one operand is true, so true OR false returns true
(1 != 1) && (2 != 2) // logical OR operator, false because both operands are false, so false OR false returns false
!(1 == 1) // logical NOT operator, false because 1 == 1 is true, so NOT true returns false

// String operations

// you can concatenate two strings using the '+' operator
let greeting = "Good" + " Morning"

// you can cast an integer or real as a string to concatenate it with another string
let rating = 3.5
var ratingResult = "The restaurant rating is " + String(rating)

// you can also use string interpolation
ratingResult = "The restaurant rating is \(rating)"

// The print() statement

// This will print the ratingResult to the Debug area
print(ratingResult)
