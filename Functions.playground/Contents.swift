import UIKit


// Объявление и вызов функции

func helloSwift() {
    print("Hello, Swift!")
}
helloSwift() // Выведет Hello, Swift!


// Приниятие значения

func square(number: Int) {
    print(number * number)
}
square(number: 7)


// Возвращение значения

func square1(number: Int) -> Int {
    return number * number // Слово return можно опустить, если пишем только одно выражение
}
var result = square1(number: 9)
print(result)


// Возвращение нескольких значений

func getUser() -> [String] {   // Возвращение нескольких значений типом Массив
    ["Ivan", "Ivanov"]
}

let user = getUser()
print(user[0])


func getUser1() -> [String: String] { // Возвращение нескольких значений типом Словарь
    ["firstname": "Ivan", "lastname": "Ivanov"]
}

let user1 = getUser1()
print(user1["firstname"])


func getUser2() -> (first: String, last: String) {
    (first: "Ivan", last: "Ivanov")
}
let user2 = getUser2()
print(user2.first)
