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

