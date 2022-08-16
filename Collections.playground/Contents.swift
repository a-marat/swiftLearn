import UIKit

/* Создание пустого массива */

var simpInt = [Int] ()
print("Массив simpInt имеет тип [Int] с значением \(simpInt.count)")

simpInt.append(2) // массив simpInt теперь содержит одно значение типа Int
simpInt = [] // массив simpInt теперь пуст, но все равно имеет тип [Int]
print(simpInt)


/* Массив с дефолтным значением */

var twoDoubles = Array(repeating: 2.2, count: 2) // массив имеет тип Double и равен [2.2, 2.2]
print(twoDoubles)


/* Создание массива путем объединения двух массивов */

var anotherTwoDoubles = Array(repeating: 5.5, count: 2)
var fourDoubles = twoDoubles + anotherTwoDoubles
print(fourDoubles) // Выведет [2.2, 2.2, 5.5, 5.5]


/* Создание массива через литералы массива */

var carDetail = ["Hood", "Wheel", "Door"]


/* Доступ и изменение массива */

print("Массив carDetail содержит \(carDetail.count) элемента") // Подсчет количества элементов в массиве

if carDetail.isEmpty { // Проверка на пустоту
    print("Массив carDetail не содержит элементов")
} else {
    print("Массив не пустой")
}

carDetail.append("Trunk") // Добавление элемента в конец массива с помощью append
carDetail += ["Motor"] // Добавление элеменат с помощью +=
print(carDetail)

var firstItem = carDetail[0] // Извлечение первого элемента массива
print(firstItem) // Выведет Hood

carDetail[0] = "Bonnet" // Замена значения первого элемента
print(carDetail)

carDetail[2...4] = ["Doors", "Trunks", "Motors"] // Массовая замена значений
print(carDetail)

carDetail.insert("Hood", at: 0) // Добавление нового элемента Hood в начало массива
print(carDetail)

carDetail.remove(at: 1) // Удаление второго элеменат массива без сохранения его значения
print(carDetail)

let carHood = carDetail.remove(at: 0) // Удаление первого элемента массива с сохранением его значения
print(carDetail)

carDetail.removeLast() // Удаление последнего элемента массива
print(carDetail)


/* Итерация по массиву */

for item in carDetail {
    print(item) // Выведет Wheel, Doors, Trunks вертикально
}

for (index, value) in carDetail.enumerated() {
    print("Элемент номер \(index + 1) : \(value)")
}


/* Множества */

var letters = Set<String>() // Инициализация пустого множества типа String

var listingSports: Set = ["Футбол", "Баскетбол", "Волейбол", "Хоккей"] // Обяъвление и инициализация множества

listingSports.count // Подсчет количества элементов множества с помощью свойства count

listingSports.isEmpty // Проверка на наличие элементов с помощью свойства isEmpty

listingSports.insert("Борьба") // Добавление нового элемента

listingSports.contains("Футбол") // Проверка на наличие определенного элемента

for sport in listingSports { // Итерация по множеству
    print(sport)
}

for sports in listingSports.sorted() { // Итерация с сортировкой по алфавиту
    print(sports)
}


/* Операции со множествами */

let oddNumbers: Set = [1, 3, 5, 7, 9]

let evenNumbers: Set = [0, 2, 4, 6, 8]

let primeNumbers: Set = [2, 3, 5, 7]

oddNumbers.union(evenNumbers).sorted() // Создание нового множества состоящего из всех значений двух множеств

oddNumbers.intersection(evenNumbers).sorted() // Создание нового множества состоящего из общих значений двух множеств

oddNumbers.subtracting(primeNumbers).sorted() // Создание нового множества со значениями не принадлежащих двум входным множествам

oddNumbers.symmetricDifference(primeNumbers).sorted() // Создание нового множества из значений, которые не повторяются в двух входных множествах



