import UIKit

// Classes
// Creating a class declaration

class Animal {
    var name: String = ""
    var sound: String = ""
    var numberOfLegs: Int = 0
    var breathesOxygen: Bool = true
    
    // Class initializer
    init(name: String, sound: String, numberOfLegs: Int, breathesOxygen: Bool) {
        self.name = name
        self.sound = sound
        self.numberOfLegs = numberOfLegs
        self.breathesOxygen = breathesOxygen
    }
    
    func makeSound() {
        print(self.sound)
    }
    
    func description() -> String {
        return("name: \(self.name) sound: \(self.sound) numberOfLegs: \(self.numberOfLegs) breathesOxygen: \(self.breathesOxygen)")
    }
}

// Mammal class, subclass of Animal
class Mammal: Animal {
    let hasFurOrHair: Bool = true
    
    // overrides the description method in the superclass
    override func description() -> String {
        return("Class: Mammal name: \(self.name) sound: \(self.sound) numberOfLegs: \(self.numberOfLegs) breathesOxygen: \(self.breathesOxygen) hasFurOrHair: \(self.hasFurOrHair) ")
    }
}

// Making an instance of the class
let cat = Mammal(name: "Cat", sound: "Mew", numberOfLegs: 4, breathesOxygen: true)


// Printing out the property values
print(cat.description())

// Calling an instance method
cat.makeSound()

// displaying the subclass property
print(cat.hasFurOrHair)

// Structures
// Creating a structure declaration
struct Reptile {
    
    var name: String = ""
    var sound: String = ""
    var numberOfLegs: Int = 0
    var breathesOxygen: Bool = true
    let hasFurOrHair: Bool = false
    
    func makeSound() {
        print(sound)
    }
    
    func description() -> String {
        return("Class: Reptile name: \(self.name) sound: \(self.sound) numberOfLegs: \(self.numberOfLegs) breathesOxygen: \(self.breathesOxygen) hasFurOrHair: \(self.hasFurOrHair) ")
    }
    
}

// Making an instance of the struct
var snake = Reptile(name: "Snake", sound: "Hiss", numberOfLegs: 0, breathesOxygen: true)

// Printing out the property values
print(snake.description())

// Calling an instance method
snake.makeSound()

// Value types vs reference types
// Value type
struct SampleValueType {
    var sampleProperty = 10
}
var a = SampleValueType()
var b = a
b.sampleProperty = 20
print(a.sampleProperty)
print(b.sampleProperty)

// Reference type
class SampleReferenceType {
    var sampleProperty = 10
}
let c = SampleReferenceType()
let d = c
c.sampleProperty = 20
print(c.sampleProperty)
print(d.sampleProperty)

// Enumerations
// Traffic light enumeration
enum TrafficLight {
    case red
    case yellow
    case green
    
    func trafficLightDescription() -> String {
        switch self {
        case .red:
            return "red"
        case .yellow:
            return "yellow"
        default:
            return "green"
        }
    }
}
var trafficLight = TrafficLight.red
print(trafficLight.trafficLightDescription())

