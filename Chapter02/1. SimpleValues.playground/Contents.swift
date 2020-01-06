import UIKit

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

// Examples of constants
let theAnswerToTheUltimateQuestion = 42
let pi = 3.14159
let myName = "Ahmad Sahar"

// Examples of variables
var currentTemperatureInCelsius = 27
var myAge = 50
var myLocation = "home"

// Value of a constant can't be changed once it is set
var isRaining = true
isRaining = false

// Type inference
// Hold down option and click on the variable or constant name to disclose the type
let cuisine = "American"

// Type annotation
var restaurantRating: Double = 3

// Type safety
// restaurantRating = "Good"

// Operations with numbers
// (+) operator for addition
let sum = 23 + 20
// (-) operator for subtraction
let result = 32 - sum
// (*) operator for multiplication
let total = result * 5
// (/) operator for division
let divide = total/10

// Operators can only work with operands of the same type

let a = 12
let b = 12.0
let c = Double(a) + b

// compound assignment operators
var aa = 1
aa += 2
// aa is now equal to 3
aa -= 1
// aa is now equal to 2

// comparison operators

1 == 1 // equal to, true because 1 is equal to 1
2 != 1 // not equal to, true because 2 is not equal to 1
2 > 1 // greater than, true because 2 is greater than 1
1 < 2 // less than, true because 1 is less than 2
1 >= 1 // greater or equal to, true because 1 is greater than or equal to 1
2 <= 1 // less or equal to, false because 2 is not less than or equal to 1

// logical operators
(1 == 1) && (2 == 2) // logical AND operator, true because both operands are true, so true AND true returns true
(1 == 1) && (2 != 1) // logical AND operator, false because one operand is false, so true AND false returns false
(1 == 1) || (2 == 2) // logical OR operator, true because both operands are true, so true OR true returns true
(1 == 1) || (2 != 2) // logical OR operator, true because one operand is true, so true OR false returns true
(1 != 1) || (2 != 2) // logical OR operator, false because both operands are false, so false OR false returns false
!(1 == 1) // logical NOT operator, false because 1 == 1 is true, so NOT true returns false

// you can concatenate two strings using the '+' operator
let greeting = "Good" + "Morning"

// you can cast an integer or real as a string to concatenate it with another string
let rating = 3.5
var ratingResult = "The restaurant rating is " + String(rating)

// you can also use string interpolation
ratingResult = "The restaurant rating is \(rating)"

// This will print the ratingResult to the Debug area
print(ratingResult)



