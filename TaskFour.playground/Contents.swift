import UIKit


// Завдання 1

/*
 Замикання це безіменні функції, тобто функціональнф блоки коду, які можна до прикладу передават як параметри в іншу функцію
 */

// Завдання 2

// Замикання складається з параметрів, повернення параметрів ключового слова "in" та тіла замикання
let res = { (a: Int, b: Int) -> Int in
    a + b
}

// Завдання 3

let str = { "Hello, World!" }
print(str())

// Завдання 4

let greetPerson = { (person: String) in
    "Hello, \(person)!"
}

print(greetPerson("Roman"))

// Завдання 5

let addNumber = { (numOne: Int, numTwo: Int) in
    numOne + numTwo
}

print(addNumber(5, 5))

// Завдання 6

let multiplayNumber = { (numOne: Int, numTwo: Int) in
    numOne * numTwo
}

print(multiplayNumber(5, 5))

// Завдання 7

let arithmeticMean = { (arr: [Int]) in
    arr.reduce(0, +) / arr.count
}

arithmeticMean([1, 2, 3, 4, 5])

// Завдання 8

func performOperation(numOne: Int, numTwo: Int, operation: (Int, Int) -> Int ) -> Int {
    operation(numOne, numTwo)
}

performOperation(numOne: 4, numTwo: 10, operation: addNumber)
performOperation(numOne: 10, numTwo: 10, operation: multiplayNumber)

// Завдання 9

/*
 "trailing closure" тобто кінцеве замикання це замикання яке знаходиться останнім у списку параметрів функції.
*/

// Завдання 10

/*
 Захоплення значень у замиканні це означає що ми можемо звернутися до зовнішньої змінної, тобто якщо грубо кажучи то для замикання у нас всі
 змінні є глобальнимию.
*/

// Завдання 11

var value = 0
print(value)
var clouserTask11 = {
    value += 1
    print(value)
}
clouserTask11()

// Завдання 12

/*
    "escaping clouser" це замикання яке можна зберегти і виконати з часом
 */

// Завдання 13

/* різниця в тому, що non-escaping clouser треба використати в тілі функції де воно викликається, а escaping clouser можна
 використати пізніше в іншому місці
 */

// Завдання 14

func escapingClouser(text: @escaping (String) -> Void) {
    text("Swift")
}

escapingClouser { $0 }

// Завдання 15

var arr = [() -> Void]()

func clouserTask15(clouser: @escaping () -> Void) {
    arr.append(clouser)
}

clouserTask15 { print("Hello") }
clouserTask15 { print("Swift") }
clouserTask15 { print("Cola") }
clouserTask15 { print(4) }

for i in arr {
    print(i)
}



















