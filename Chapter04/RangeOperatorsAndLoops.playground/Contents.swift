import UIKit

// range operators

// closed range operator
let myRange = 10...20

// half-open range operator
let myRange2 = 10..<20

// loops

// for-in loop
// steps through every value in a sequence
for number in myRange {
    print(number)
}

for number in myRange2 {
    print(number)
}

for number in (0...5).reversed() {
    print(number)
}

// while loop
// condition is checked, and if true, the set of statements in the curly braces is executed
var y = 0
// if y = 100, the set of statements is not executed. Uncomment the next line to see this
// y = 100
while y < 50 {
    y += 5
    print("y is \(y)")
}

// repeat loop
// set of statements is executed, then the condition is checked
var x = 0
// if x = 100, the set of statements is executed once. Uncomment the next line to see this
// x = 100
repeat {
    x += 5
    print("x is \(x)")
} while x < 50

