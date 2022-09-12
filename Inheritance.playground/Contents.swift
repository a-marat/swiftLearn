import UIKit

// Наследование

// Создаем базовый класс с инициализацией свойств

class Dog {
    
    var name = ""
    var breed = ""
    
    var info: String {
        return "Это собака по имени \(name) породы \(breed)"
    }
    
    func makeNoize () -> String {
        return "Hello"
    }
}


// Создаем дочерний класс

class Corgi: Dog {
    
    // Собственное свойство дочернего класса без инициализации
    
    var isHappy: Bool
    
    // Переопределяем вычисляемое свойство базового класса
    
    override var info: String {
        return name + " " + breed
    }
    
    // Переопределяем метод базового класса с помощью ключевого слова override перед объявлением метода. Вариант 1
//    override func makeNoize() -> String {
//        return "Hello, Sir"
//    }
    
    // Переопределяем метод базового класса с помощью ключевого слова override и super. Вариант 2
    override func makeNoize() -> String {
        return super.makeNoize() + " " + "Sir"
    }
    
    // Инициализация свойств
    
    init(isHappy: Bool) {
        self.isHappy = isHappy
    }

}

var corgi = Corgi(isHappy: true)

corgi.name = "Mukhtar" // Присваиваем свойству name значение Mukhtar
corgi.breed = "Corgi"  // Присваиваем свойству name значение Corgi
corgi.info


// Создаем базовый класс без инициализации свойств

class Dog2 {

    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Corgi2: Dog2 {
    
    init() {
        super.init(name: "Alisa", breed: "Corgi") // Инициализация свойств базового класса в дочернем классе
    }
}

var corgi2 = Corgi2()

corgi2.name
corgi2.breed
