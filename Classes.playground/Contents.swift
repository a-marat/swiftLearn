import UIKit

// Классы

class SimpleClass {
    // Здесь пишется определение класса
}

// Определение класса со значениями свойств

class Human {
    
    var age = 26
    var name = "Марат"
    
    func move() {
        print("\(name) iOs разработчик")
    }
    
}

var marat = Human() // Создание экземпляра класса

marat.age // Выведет 26
marat.move() // Выведет Марат iOs разработчик


// Определение класса без значений свойств

class HumanTwo {
    
    var age: Int
    var name: String
    
    func move() {
        print("\(name) iOs разработчик")
    }
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
    
}

var Human2 = HumanTwo(age: 23, name: "Зайнаб") // Инициализация свойств при создании экземпляра класса


// Свойства класса
// stored properties - хранимые свойства; computed properties - вычисляемые свойства.

class HumanThree {
    
    var age: Int
    var name: String
    var isQualified: Bool
    
    var status: String {
        if isQualified {
            return "\(name) подходит для этой работы"
        } else {
            return "\(name) не подходит для этой работы"
        }
    }
    
    init(age: Int, name: String, isQualified: Bool) {
        self.age = age
        self.name = name
        self.isQualified = isQualified
    }
}

var arslan = HumanThree(age: 26, name: "Арслан", isQualified: true)
arslan.status // Выведет Арслан подходит для этой работы

// Вычисляемые свойства

/* Структура вычисляемых свойств
 
 var имя свойства: тип данных {
    get {
        // вычисление значения
    }
    set (параметр) {
        // установка значения
    }
 }
 
*/


class Account {
    
    var sum: Double = 0 // сумма вклада
    var rate: Double = 0.01 // процентная ставки
    
    var profit: Double {
        
        get {
            return sum + sum * rate
        }
        set (newProfit) {
            self.sum = newProfit / (1 + rate)
        }
    }
    
    init(sum: Double, rate: Double) {
        self.sum = sum
        self.rate = rate
    }
}

var myAcc: Account = Account(sum: 1000, rate: 0.1)

print(myAcc.profit)

myAcc.profit = 2000 // ожидаемая прибыль

print(myAcc.sum) // необходимая сумма вклада для получения этой прибыли


// Хранимые свойства

/* Структура хранимых свойств
 
 var имя свойства: тип данных {
    
    willSet(параметр) {
    // выражения
    }
    didSet(параметр) {
    // выражения
    }
 }
 
*/


class Account2 {
    
    var sum: Double {
        willSet(newSum) {
            print("Предыдущая сумма \(self.sum) / Новая сумма \(newSum)")
        }
        didSet(oldSum) {
            print("Сумма увеличилась на: \(self.sum - oldSum)")
        }
    } // сумма вклада
    var rate: Double = 0.01 // процентная ставки
    
    var profit: Double {
        
        get {
            return sum + sum * rate
        }
        set (newProfit) {
            self.sum = newProfit / (1 + rate)
        }
    }
    
    init(sum: Double, rate: Double) {
        self.sum = sum
        self.rate = rate
    }
}

var myAcc2: Account2 = Account2(sum: 1000, rate: 0.1)

print(myAcc2.profit)

myAcc2.profit = 2000 // ожидаемая прибыль

print(myAcc2.sum) // необходимая сумма вклада для получения этой прибыли
