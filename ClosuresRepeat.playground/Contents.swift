import UIKit

// Замыкания (клоужеры) повтор

/*
 Синтаксис
 
 { (параметры) -> тип результата in
    тело клоужера (выражения)
 }
 
 */

// Клоужер без параметров

let driving = {
    print("I'm driving in my car")
}
 
driving() // Выведет I'm driving in my car


// Клоужер с параметром
let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("London") // Выведет I'm going to London in my car


// Разница между функциями и клоужерами

func pay(user: String, amount: Int) {
    // code
}

let payment = { (user: String, amount: Int) in
    
}


// Клоужер с возвращаемыми значениями

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message) // Выведет I'm going to London in my car


// Создание пустого клоужера
let driving3 = {
    print("I'm driving to go")
}

// Создание фукнции где в качестве параметров прописываем синтаксис пустого клоужера
func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived!")
}

travel(action: driving3) // Вызов фукнции с пустым клоужером

// Вызов функции с клоужером. Данный метод работает только если последним параметром функции является пусто клоужер.
travel() {
    print("I'm driving in my car")
}


// Клоужеры, которые принимают параметры и сами являются параметрами функции

func travel2(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I arrived!")
}

travel2 { (place: String) in
    print("I'm going to \(place) in my car")
}


//

let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed)kph")
}

func buildCar(name: String, engine: (Int) -> Void) {
    // build the car
}

func travel3(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel3 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


// Сокращенные имена параметров

func travel4(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel4 {
    "I'm going to \($0) at \($1) miles per hour"
}


// Возвращение клоужера из функции

func travel4() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel4()

result("London")
