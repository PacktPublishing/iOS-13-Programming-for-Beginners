import UIKit

// Protocols and extensions
// CalorieCountProtocol
protocol CalorieCountProtocol{
    // To adopt this protocol these methods must be implemented
    var calories: Int { get }
    func description() -> String
}

// CalorieCountProtocol adopted by a class
class Burger : CalorieCountProtocol {
    let calories = 800
    func description() -> String {
        return "This burger has \(calories) calories"
    }
}

// CalorieCountProtocol adopted by a structure
struct Fries : CalorieCountProtocol {
    let calories = 500
    func description() -> String {
        return "These fries has \(calories) calories"
    }
}

// Sauce enum
enum Sauce {
    case chili
    case tomato
}

// Sauce adopting CalorieCountProtocol via extension
extension Sauce : CalorieCountProtocol {
    // enums can't have stored variables, only computed variables
    var calories : Int {
        switch self {
        case .chili:
            return 20
        case .tomato:
            return 15
        }
    }
    func description() -> String {
        return "This sauce has \(calories) calories"
    }
}

// create instances of each type
let burger = Burger()
let fries = Fries()
let sauce = Sauce.tomato

// print the descriptions
print(burger.description())
print(fries.description())
print(sauce.description())

// since all items have adopted the same protocol, you can add them to a single array
let foodArray : [CalorieCountProtocol] = [burger, fries, sauce]

// calculate the total number of calories
var totalCalories = 0
for food in foodArray {
    totalCalories += food.calories
}
print(totalCalories)

// Error handling
// Create an enum that adopts the error protocol
enum WebpageError: Error {
    case success
    // associate server response value with failure
    case failure(Int)
}

// getWebpage will throw an error if the site is down
func getWebpage(uRL: String, siteUp: Bool) throws -> String {
    if siteUp == false {
        throw WebpageError.failure(404)
    }
    return "Success"
}

let webpageURL = "http://www.apple.com"
let websiteUp = true

do {
    let status = try getWebpage(uRL: webpageURL, siteUp: websiteUp)
    print(status)
} catch {
    print(error)
}


