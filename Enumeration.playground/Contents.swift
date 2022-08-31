import UIKit
import Darwin

// Перечисления

let result = "failure"
let result2 = "failed"
let result3 = "fail"

// Инициализация перечисления

enum Result {
    case success
    case failure
}

// Присваивание перечисления к переменной

var result4 = Result.failure

// Замена значения перечисления

result4 = .success

// Определение перечисления и инициализация

let result5: Result

result5 = .success

// Перечисления и конструкция Switch

enum Activity {
    case dancing
    case running
    case talking
    case signing
}

let currentActivity = Activity.dancing

switch currentActivity {
    
case .dancing: print("Dance")
case .running: print("Run")
case .signing: print("Song")
case .talking: print("Talk")
    
}

// Выведет Dance


// Перечисления с ассоциативными значениями

enum Activity2 {
    case dancing
    case running(dectination: String)
    case talking(topic: String)
    case signing(volume: Int)
}

let talking = Activity2.talking(topic: "Football")


// Перечисления с численными значениями

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3) // Выведет mars


// Перечисления с стороковыми значениями

enum Phone: String {
    case Apple = "iPhone 7"
    case Samsung = "Galaxy S10"
    case Google = "Pixel 6"
}

var myPhone = Phone.Apple

print(myPhone) // Выведет Apple

print(myPhone.rawValue) // Выведет также iPhone 7


