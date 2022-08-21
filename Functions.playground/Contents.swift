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


// Имена параметров

func sayHello(to name: String) { // Задаем внешний (to) и внешний параметры (name)
    print("Hello, \(name)")
}
sayHello(to: "Marat")


// Пропуск имен параметров

func greet(_ person: String) { // Внешнее имя параметра функции можно пропустить символом нижнего подчеркивания "_"
    print("Hello, \(person)")
}
greet("Arslan")


// Параметры по умолчанию

func greet1(_ person: String, nicely: Bool = true) {
    
    if nicely == true {
        print("Hello, \(person)")
    } else {
        print("Oh no^ it's \(person) again")
    }
}

//greet1("Arkadiy") // Вызов функции без параметров по умолчанию. Выведет Hello Arkadiy

greet1("Arkadiy", nicely: false) // Вызов функции с параметрами по умолчанию. Выведет Oh no^ it's Arkadiy again


// Вариативные параметры и вариативные функции

func square2(numbers: Int...) { // ... после типа параметра позволяет сделать тип и функцию в последствии вариативными
    for number in numbers {
        print("\(number) в квадрате будет \(number * number)")
    }
}
square2(numbers: 1, 2, 3, 4, 5)


// Сквозные параметры

func doubleIt(number: inout Int) { // С помощью ключевого слова inout можно сделать параметр сквозным, чтобы сменить его тип
    number *= 2
}

var myNumber = 5

doubleIt(number: &myNumber)

