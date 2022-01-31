import UIKit

// 1. Create 3 variables to store the following for currency values: $43.88, $108.99, and $14.22. Use an appropriate type. Output the sum of the 3 values.
var one = 43.88
var two = 108.99
var three = 14.22
let sum = "$\(one+two+three)"
print(sum)

// 2. Create a boolean variable: isNegative. Assign a value. If the boolean value is negative, output “It is less than 0”. If it is greater than or equal to 0, output “It is not a negative".

var isNegative = -1
if isNegative < 0 {
    print("It is less than 0")
} else {
    print("It is not a negative")
}

// 3. Create an array with string values: Swift, Objective-C, HTML, CSS, and JavaScript. Use a loop to output the values of the array.
var array = ["Swift", "Objective-C", "HTML", "CSS", "JavaScript"]
for element in array {
    print(element)
}

// 4. In a comment, explain what an optional value is.
// The value that might be missing is represented as optional. An optional value either contains a value or contains nil to indicate that a value is missing.

// 5. In another comment, explain what nil is in Swift.
// nil in swift means that the value is missing.

// 6. Use the following example. First, prior to the code, define reading1, reading2, and reading3 as optionals. Explain the danger of forcibly unwrapping optionals. How does the following code safeguard this?
var reading1: Int?
var reading2: Int?
var reading3: Int?
if let r1 = reading1,
    let r2 = reading2,
    let r3 = reading3 {
    
    let avgReading = (r1 + r2 + r3) / 3
    print(avgReading)
    
} else {
    let errorString = "Instrument reported a reading that was nil."
    print(errorString)
    
}
// Danger of forcibly unwrapping optional: If the optional does not have any value in it and it is unwrapped forcibly it will cause a runtime error and can also lead to app crash.
// The code above safe guards it by using the if and let. If any of the readings were missing value then the boolean condition in the if condition would become false and therefore the else condition would be executed.

// 7. Use Swift’s range type to output numbers 1 through 5.
for i in 1...5 {
    print(i)
}

// 8. Use the enumerated() function to output numbers 5 through 10.
for (_,c) in (5...10).enumerated() {
    print(c)
}

// 9. Use string interpolation to combine a variable storing your name, the string literal “ is mastering “, and a variable containing “ the Swift Programming language”.
// Using the currency example from problem 1, output “The total is “ followed by the sum.
let firstName: String = "Akshita Lathar"
let language: String = " the Swift Programming language"
let combined = "\(firstName) is mastering\(language)"
print(combined)
print("The total is \(sum)")

// 10. Create a function that accepts two Int parameters and returns the product (multiplication) of the parameters. Output the product.

func product(one: Int, two: Int) -> Int{
    let p = one*two
    return p
}
let p = product(one: 10, two: 20)
print(p)


// 11.  Create a class called Dog. In the class add properties breed and name and methods bark() and display(). In bark() print “\(name) is barking”. In display() print the name and breed properties. Create an object of type Dog. Assign values to breed and name. Call bark() and display().

class Dog {
    var breed: String
    var name: String
    
    init(breed: String, name: String) {
        self.breed = breed
        self.name = name
    }
    
    func bark() {
        print("\(name) is barking")
    }
    
    func display() {
        print("name: \(name), breed: \(breed)")
    }
}
let dog = Dog(breed: "Labra", name: "Oscar")
dog.bark()
dog.display()

