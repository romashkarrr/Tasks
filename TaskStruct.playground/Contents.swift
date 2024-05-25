import UIKit

// Структура Book
struct Book {
    
    // Властивості структури
    let title: String
    let author: String
    let genre: String
    let year: Int
    var availableAmount = 5
    
    var age: Int {
        2024 - year
    }
    
    // Ініціалізатор структури
    init(title: String, author: String, genre: String, year: Int) {
        self.title = title
        self.author = author
        self.genre = genre
        self.year = year
    }
    
    // Методи структури
    func BookTheInfo() {
        print("""
        Title: \(title)
        Author: \(author)
        Genre: \(genre)
        Year of Publication: \(year)
        """)
    }
    
    mutating func borrowBook() {
        if availableAmount > 0 {
            availableAmount -= 1
        } else {
            print("The library does not have this book")
        }
    }
}

// Масив книг
var librar = [
    Book(title: "To Kill a Mockingbird", author: "Harper Lee", genre: "Novel", year: 1960),
    Book(title: "1984", author: "George Orwell", genre: "Dystopia", year: 1949),
    Book(title: "Pride and Prejudice", author: "Jane Austen", genre: "Novel", year: 1813),
    Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", genre: "Novel", year: 1925),
    Book(title: "The Lord of the Rings", author: "J.R.R. Tolkien", genre: "Fantasy", year: 1955)
]

/*
 Функція яка отримує жанр як параметр і виводить інформацію про всі книги у бібліотеці, що належать до цього жанру.
 Якщо жодна книга не відповідає критеріям, то потрібно вивести повідомлення про те, що книг не знайдено.
*/

func listBooksInGenre(genre: String) {
    var bookInLibrary = false
    
    for book in librar {
        if book.genre == genre {
            book.BookTheInfo()
            bookInLibrary = true
        }
    }
    
    if !bookInLibrary {
        print("The library does not have a book with a genre \(genre)")
    }
}

// Перевірка 4 завдання, щоб перевірити розкоментуй код нижче.

//listBooksInGenre(genre: "Novel")


/*
 Функція яка отримує рік як параметр і виводить інформацію про всі книги у бібліотеці, які були опубліковані у вказаному році або після нього.
 Якщо жодна книга не відповідає критеріям, то потрібно вивести повідомлення про те, що книг не знайдено.
*/
func listBooksPublishedAfter(year: Int) {
    var bookInLibrary = false
    
    if year > 0 {
        for book in librar {
            if book.year >= year {
                book.BookTheInfo()
                bookInLibrary = true
            }
        }
        
        if !bookInLibrary {
            print("We have no books in the library from this year")
        }
    } else {
        print("You entered the wrong year")
    }
}

// Перевірка 5 завдання, щоб перевірити розкоментуй код нижче.

//listBooksPublishedAfter(year: 2000)

// Перевірка 6 завдання, щоб перевірити розкоментуй код нижче.

//librar[0].availableAmount
//librar[0].borrowBook()
//librar[0].availableAmount
