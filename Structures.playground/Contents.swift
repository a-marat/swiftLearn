import UIKit

// Структуры

// Создаем класс

class Human {
    
    var age: Int
    var name: String
    
    init(age: Int, name: String){  // Инициализация свойств
        self.age = age
        self.name = name
    }
}

var human = Human(age: 26, name: "Marat") // Создание экземпляра класса

var human3 = Human(age: 33, name: "Arkadiy")

human3.age
human3.name

human3 = human // Присваиваем значения свойств экземпляра human к human3

// Меняем значения свойств
human3.age = 60
human3.name = "Kurban"

// Проверяем значения экземпляра human
human.age // Выведет 60
human.name // Выведет Kurban

// В этом и заключается 3-е отличие класса от структуры, что структура просто копирует значения, а классы нет.


// Создаем структуру

struct Human1 {
    
    var age: Int
    var name: String
    
}

var human1 = Human1(age: 26, name: "Mukhtar")

// 1 отличие класса от структур - это автоматитеская инициализация свойств

human1.age = 35
human1.age // Выведет 35

//let human11 = Human1(age: 26, name: "Arslan")

//human11.age = 36
//human11.age // Выведет ошибку, так как экземпляр структуры и его свойства должны быть одного типа. Это 2-ое отличие.


/*
 Основные типы данных в Swift
 value type - Int, String, Bool, struc
 reference type - enum, class
 */

var human2 = Human1(age: 35, name: "Maria")

human2.age
human2.name

human2 = human1 // Перезапишем значения экземпляра human2 на human1

human2.age = 45
human2.name = "Nataliya"

human2.age // Выведет 45
human2.name // Выведет Nataliya

// Проверим значения свойст экземпляра human1

human1.age // Выведет 35
human1.name // Выведет Mukhtar

// Исходя из этого понимаем, что экземпляры просто копируют значения. Третье отличие расписано на строчке 35


// Различия между методами в классе и методами в структре

struct Person {
    
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

/* Для того чтобы можно было менять значения свойства в методе, в структуре перед словом func нужно прописать ключевое словао mutating
*/
