import UIKit


// Завдання №1

// тернарний оператор
let task1 = true
task1 ? "true" : "false"

// Завдання №2

// Опціонал
let userName: String? = "Roman"
if let userName = userName {
    print("Hello \(userName)")
} else {
    print("Error")
}
/* Іноді потрібно обробляти відсутність значення, не інтове 0, і не пустий рядок в String а саме відсутність, тобно nil для цього в нагоді слугують
 щпціональні значення, вони дозволяють обробляти відсутність значення.
*/

// Завдання №3

//відкритий діапазон
for i in 1...10 {
    print(i)
}

// Напіввідкритий діапазон
for i in 1..<10 {
    print(i)
}

// Завдання №4

// Має виводити 2 5 7 9
let task4 = true
for i in 1...10 {
    if i % 2 != 0  && i > 4 || i % 2 == 0 && i == 2 {
        print(i)
    }
}

// Завдання №5

var str = "Hello, World!"

// Виводить символи рядка
for char in str {
    print(char)
}

// Виводить кількість символів у рядку
print(str.count)

// Виводить перший та останній символи в рядку

// перший символ
if let firstChar = str.first{
    print(firstChar)
} else {
    print("Error")
}

// Останній символ
if let lastChar = str.last {
    print(lastChar)
} else {
    print("Error")
}
/* В обох випадках ми використовуємо вбудовані функції але ми використовуємо розгортання бо у випадку пустого рядка ми отримаємо текст Error
 а якби не було перевірки то наша програма крашнулася
*/

// Видаляє кому

print(str.replacingOccurrences(of: ",", with: ""))

// Завдання №6

// Перевірка на префікс
let pref = str.hasPrefix("How")

// Перевірка на суфікс
let suf = str.hasSuffix("World!") // я допускаю що у завданні мабуть помилка там написано world! а треба з великої(я просто подумав має бути префікс false a суфікс true тому і думаю що помилка)

// Завдання №7

var hello = "Hello, World!"
var hello2 = "HoW aRe YoU?"
var hello3 = "hello, world"

// Всі великі літери
print(hello.uppercased())

// Всі малі літери
print(hello2.lowercased())

// Кожне слово з великої літери
print(hello3.capitalized)

// Завдання №8

// while loop
var i = 1
while i <= 10 {
    print(i)
    i += 1
}

// repeat-while loop
repeat {
    print(i)
    i -= 1
} while i != 0

// for loop
for i in ["Hi", "my", "name", "is", "Roman"] {
    print(i)
}

// Завдання №9

// Виводить квадрат цифер
for i in stride(from: 0, to: 10, by: 1) {
    print(i * i)
}

// Завдання №10

var may = Array(1...31)
for i in may {
    if i % 2 == 0 {
        print(i)
    }
}

// Завдання №11

// Множення непарних на 3
for (index, day) in may.enumerated() {
    if day % 2 != 0 {
        may[index] = day * 3
    }
}

// Видалення парних
may = may.filter {$0 % 2 != 0}
print(may)

// Завдання №12

for i in 1...10 {
    if i == 5 {
        break
    }
    print(i)
}

for i in 1...10 {
    if i == 6 {
        continue
    }
    print(i)
}
