import UIKit

// Завдання №1

var intvar: Int = 23
var strvar: String = "Test"
var boolvar: Bool = true
var doubevar: Double = 3.14
var floatvar: Float = 3.15
var charvar: Character = "c"
print(intvar, strvar, boolvar, doubevar, floatvar, charvar)


// Завдання №2

let firstName = "Roman"
let lastName = "Kish"
let sureName = "Vasilovich"
print("\(firstName) \(lastName) \(sureName)")

// Завдання №3

var firstNumber = 10
var secondNumber = 19
var lastNumber = 43

print("Addition: \(firstNumber + secondNumber + lastNumber)")
print("Multiply: \(firstNumber * secondNumber * lastNumber)")
print("Minus: \(firstNumber - secondNumber - lastNumber)")
print("Division: \(firstNumber / secondNumber / lastNumber)")
print("Remainder: \(firstNumber % secondNumber % lastNumber)")

// Завдання №4

var firstDoubleNumber = 10
var secondDoubleNumber = 19
var lastDoubleNumber = 43

print("Addition: \(firstDoubleNumber + secondDoubleNumber + lastDoubleNumber)")
print("Multiply: \(firstDoubleNumber * secondDoubleNumber * lastDoubleNumber)")
print("Minus: \(firstDoubleNumber - secondDoubleNumber - lastDoubleNumber)")
print("Division: \(firstDoubleNumber / secondDoubleNumber / lastDoubleNumber)")
print("Remainder: \(firstDoubleNumber % secondDoubleNumber % lastDoubleNumber)")

// Завдання №5

// Завдання не може юути виконане тому що тип Int не можна розділити на 1.5, бо це зовсім інший тип Double а Swift є строготипізованою мовою

// Завдання №6

/*
    Різниця між Int та UInt в тому що тип Int може містити діапазон цілих чисел разом з мінусовими значеннями, а тип UInt може містити тільки
    значення більше нуля. різниця між Double та Float в тому що Doucle містить більше чисел після коми
 */

// Завдання №7

let booleon = true

if booleon {
    print("Hello, Yurii")
}

// Завдання №8

var str = "Hello, world"

if str == "Hello, world!" {
    print("True")
} else if str == "hello, world!" {
    print("True")
} else {
    print("False")
}

// Завдання №9

str += ", Swift"

switch str {
case "Hello":
    print("No")
case "Hello, world":
    print("No")
case "Hello, world, Swift":
    print("Yes")
default:
    print("Undef")
}

// Завдання №10

let task10 = (10, "swift")
print("\(task10.1) \(task10.0)")







