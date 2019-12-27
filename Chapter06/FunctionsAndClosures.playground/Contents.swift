import UIKit

// Functions
// Computing a service charge
func serviceCharge(forMealPrice mealCost: Int) -> Int {
    // serviceCharge is 10% of mealCost, which is the value returned
    // forMealPrice is used when calling the function
    // mealCost is used in the function itself
    return mealCost / 10
}

// call the function
let serviceChargeAmount = serviceCharge(forMealPrice: 50)
print(serviceChargeAmount)

// Calculating monthly payments for a car loan
func calculateMonthlyPayments(carPrice: Double, downPayment: Double, interestRate: Double, paymentTerm: Double) -> Double {
    // loanAmount() calculates the total loan amount
    func loanAmount() -> Double {
        return carPrice - downPayment
    }
    // totalInterest() calculates the total interest amount incurred for the payment term
    func totalInterest() -> Double {
        return interestRate * paymentTerm
    }
    // noOfMonths() calculates the total number of months in the payment term
    func noOfMonths() -> Double {
        return paymentTerm * 12
    }
    return (( loanAmount() + (loanAmount() * totalInterest() / 100)) / noOfMonths())
}

// calculate monthly payments for a car costing 50,000, with a downpayment of 5000
// interestRate of 3.5 and 7 years payment term
calculateMonthlyPayments(carPrice: 50000, downPayment: 5000, interestRate: 3.5, paymentTerm: 7.0)
// result in 666.96

// functions can return other functions
func makePi() -> (() -> Double) {
    // this is the function that will be returned
    func generatePi() -> Double {
        return 22.0 / 7.0
    }
    return generatePi
}
// the function is assigned to a constant
let pi = makePi()
print(pi())
// 3.142857142857143 will appear in the Debug area

// functions can have functions as parameters
func isThereAMatch(listOfNumbers: [Int], condition: (Int) -> Bool) -> Bool {
    for item in listOfNumbers {
        if condition(item) {
            return true
        }
    }
    return false
}
// this function determines if a number is an odd number
func oddNumber(number: Int) -> Bool {
    // number % 2 returns 1 for odd, 0 for even
    return (number % 2) > 0
}
var numbersList = [2, 4, 6, 7]
isThereAMatch(listOfNumbers: numbersList, condition: oddNumber)
// since numbersList has 7 in it, true will be returned

// guard statement

func buySomething(itemValueField: String, cardBalance: Int) -> Int {
    guard let itemValue = Int(itemValueField) else {
        print("error in item value")
        return cardBalance
    }
    let remainingBalance = cardBalance - itemValue
    return remainingBalance
}
print(buySomething(itemValueField: "10", cardBalance: 50))
print(buySomething(itemValueField: "blue", cardBalance: 50))

// Closures
let mappedNumbers = numbersList.map { $0 * $0 }
print(mappedNumbers)

// Simplifying Closures

/*

var numbers = [2, 4, 6, 7]
let mappedNumbers = numbers.map({ (number: Int) -> Int in
let result = number * number
return result
})
print(mappedNumbers)
// Prints "[4, 16, 36, 49]"
 
 var numbers = [2, 4, 6, 7]
 let mappedNumbers = numbers.map({ number in number * number })
 print(mappedNumbers)
 // Prints "[4, 16, 36, 49]"

 var numbers = [2, 4, 6, 7]
 let mappedNumbers = numbers.map { number in number * number }
 print(mappedNumbers)
 // Prints "[4, 16, 36, 49]"
 
 var numbers = [2, 4, 6, 7]
 let mappedNumbers = numbers.map { $0 * $0 }
 print(mappedNumbers)
 // Prints "[4, 16, 36, 49]"
 
 
 */






