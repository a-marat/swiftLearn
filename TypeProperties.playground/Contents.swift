import UIKit

// Свойства типов

// Создаем класс

class Dog {
    var name: String
    var age: Int {
        didSet {
            if age > Dog.maxAge {
                age = oldValue
            }
        }
    }
    
    static var maxAge = 30  //  Ключевое слово static обозночает, что мы определили данный тип как свойство класса
    
    static var howManyDog = 0 // Переменная которая подсчитывает количество созданных экземляров класса Dog
    
    init(name: String, age: Int) {  // Инициализация свойств
        self.name = name
        self.age = age
        Dog.howManyDog += 1
    }
}


// Создаем структуру

struct Cat {
    var name: String
    var age: Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    
    static var maxAge = 30  // Ключевое слово static обозночает, что мы определили данный тип как свойство структуры
    
    static var howManyCats = 0
    
    init(name: String, age: Int) {  // Инициализация свойств
        self.name = name
        self.age = age
        Cat.howManyCats += 1
    }
    
}


var dog = Dog(name: "Sobaka", age: 6) // Создание экземпляра класса
var dog2 = Dog(name: "Sobaka2", age: 8) // Создание второго экземпляра класса

dog.age // Просмотр значения свойства класса. Выведет 6

dog.age = 35 // Присваиваем новое значение для свойства age

dog.age // Выведет 6 потому что в классе прописано условие

Dog.howManyDog // Выведет 2

var cat = Cat(name: "Koshka", age: 4) // Создание экземпляра структуры

Cat.howManyCats // Выведет 1


