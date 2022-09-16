import UIKit

// Расширения

// Создаем расширения для типа данных Int (что является встроенной структурой в Swift)

extension Int {
    
    func squared() -> Int {
        return self * self  // Означает, что экземпляр структуры будет умножаться на саму себя
    }
    
    // Добавляем метод, который повторяет кусочек кода в соответствии со значением экземпляра
    
    func repetition(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
    
    // Добавляем вычисляемое свойство в расширение
    
    var isEven: Bool {
        return self % 2 == 0
    }
    
}

var number = 10  // Объявляем переменной целочисленного типа со значением 10

number.squared() // Применяем нашу структуру из расширения Int

number.isEven // Выведет true, так как значение переменной четное

number.repetition {
    print("Марат с днем рождения!!!")
}


// Создаем расширение для типа Double

extension Double {
    
    var m: Double {
        return self
    }
    
    var km: Double {
        return self * 1000
    }
    
    var cm: Double {
        return self / 100
    }
    
    var mm: Double {
        return self / 1000
    }
}

var double = 6.0

double.m // Выведет 6

double.km // Выведет 6000

double.cm // Выведет 0.06

double.mm // Выведет 0.006

