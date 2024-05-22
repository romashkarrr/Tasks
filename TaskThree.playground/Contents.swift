import UIKit

// Завдання №1

func largeNumber(num1: Int, num2: Int) -> Int {
    num1 > num2 ? num1 : num2
}

print(largeNumber(num1: 9, num2: 6))

// Завдання 2

let arrayDouble = [3.5, 23.6, 65.3, 2.2, 5.5, 6.3]
func maxAndMinValue(arr: [Double]) -> (Double, Double) {
    var result = (0.0, 0.0)
    if let max = arr.min() {
        result.0 = max
    }
    if let min = arr.max() {
        result.1 = min
    }
    return result
}

print(maxAndMinValue(arr: arrayDouble))

// Завдання 3

func greenMultipleTimes(times: Int = 1, user: String) {
    var count = times
    while count > 0 {
        print("Hello, \(user)!")
        count -= 1
    }
}

greenMultipleTimes(user: "Yurii")

// Завдання 4

func swapStrings(x: Int, y: Int) {
    var a = x
    var b = y
    var c = 0
    
    c = a
    a = b
    b = c
    
    print(a, b)
}

swapStrings(x: 4, y: 8)

// Завдання 5

var num1 = 543
var num2 = 2345
var num3 = 3
var num4 = 7

print((num1 + num2 + num3 + num4) / 4)

// Завдання 6

print(Double((num1 * num2 * num3 * num4)).squareRoot())

// Завдання 7

var a: Double = 2
var b: Double = -7
var c: Double = 6

let discriminator = b * b - 4 * a * c

let root1 = (-b - discriminator.squareRoot()) / (2 * a)
let root2 = (-b + discriminator.squareRoot()) / (2 * a)

print("\(a)*x^2 + \(b)*x + \(c) = 0, root1 = \(root1) , root2 = \(root2)")
