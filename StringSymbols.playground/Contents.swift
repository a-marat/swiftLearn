import UIKit

let lojaMotto = "No pain - No gain!" // "" кавычки это строковый литерал

let multiLine = """
Тройные кавычки означают, что содержимое является многострочным, так как его
можно размещать на нескольких строках.
"""

let multiLineTransfer = """
Обратный слэш помогает сделать код более читаемым, \
но на отображение в итоге никак не повлияет.
"""

let multiLineCarriage = """

Если мы хотим объявить литерал, который начинается и закачивается
возвратом символа каретки, то оставляем пустые пробелы в начале и в конце.

"""

let multiLineSpace = """
В этой строке нет пробелов в начале
    В этой строке 4 пробела
В этой строке так же нет пробелов в начале
"""


/* Специальные символы в строковых литералах */

/*
 
\0 - Нулевой символ
\\ - Обратный слэш
\r - Возвращение каретки
\t - Табуляция
\n - Перенос на новую строку
\" - Двойные кавычки
\' - Одиночные кавычки

\u{n} - Скалярные величины юникода, где n произвольное шестнадцатеричное число.
 
*/

let lojaMotto2 = " \"Без боли - нет результата!\" - слоган Ложи" //  "Без боли - нет результата!" - слоган Ложи
let dollarSign = "\u{24}" // "$"


/* Инициализация пустых строк */

let emptyString = ""
let emptyStringV2 = String()


/* Изменчивость строк */

var varString = "Ajara" // было "Ajara"
varString += " go Loja" // стало "Ajara go Loja "

/*
let constantString = "Ajara" // было "Ajara"
constantString += " go Loja" // Выдаст ошибку "change 'let' to 'var' to make it mutable"
*/


/* Работа с символами */

for character in "Car" {
    print(character) // Выведет C a r в вертикальном виде
}


/* Конкатенация строк */

let string1 = "Hello"
let string2 = " World"

var helloWorld = string1 + string2
print(helloWorld) // Выведет Hello World


/* Интерполяция строк */

let multiplier = 3
let message = "\(multiplier) умноженное на 2.5 будет \(Double(multiplier) * 2.5)"


/* Подсчет символов */

let salam = "Ассаламу алейкум"
print("Переменная salam содержит \(salam.count) символов")


/* Индексы строки */

salam[salam.startIndex] // А
salam[salam.index(before: salam.endIndex)] // м
salam[salam.index(after: salam.startIndex)] // с

let indexSalam = salam.index(salam.startIndex, offsetBy: 6)
salam[indexSalam] // м


/* Добавдение и удаление */

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex) // hello!
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex)) // hello there!

welcome.remove(at: welcome.index(before: welcome.endIndex)) // hello there
print(welcome)


/* Сравнение строк */

let string3 = "Какой-то текст"
let string4 = "Какой-то текст"

if string3 == string4 {
    print("Строки считаются равными")
} else {
    print("Строки не равные")
}


/* Равенство префиксов и суффиксов */

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}

print("Всего \(act1SceneCount) сцен в акте 1") // Всего 5 сцен в акте 1


var mansionCount = 0
var cellCount = 0

for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}

print("\(mansionCount) сцен в особняке; \(cellCount) тюремные сцены") // 6 сцен в особняке; 2 тюремные сцены

