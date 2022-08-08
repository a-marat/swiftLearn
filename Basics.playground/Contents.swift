import UIKit

/* Константы и переменные */

let firstConstant = 14 // Объявление константы со значением 14
var firstVariable = 01 // Объявление переменной со значением 02
var x = 0, y = 0, z = 0 // Объявление нескольких типов переменных

var text: String // Принудительное обозначение типа переменной
text = "Hello World" // Переменная типа String со значением "Hello World"

var simpleVariable = "MainCraft" // Переменная со значением "MainCraft"
simpleVariable = "CS GO" // Та же переменная, но только с заменой значения на "CS GO"

print (simpleVariable) // Выведет последнее записанное значение переменной simpleVariable, то есть: "CS GO"


/* Числа */

let minValue = UInt8.min // Получение доступа к минимальному значению беззнакового целого типа. Выведет 0
let maxValue = UInt8.max // Получение доступа к максимальному значению беззнакового целого типа. Выведет 255

var numVarInt: Int = -6 // Объявление переменной целого знакового типа со значением -6
var numVarUInt: UInt = 8 // Объявление переменной целого беззнакового типа со значением 8

var numDouble: Double = 3.14 // Объявление переменной вещественного типа со значением 3.14 (64 бит)
var numFloat: Float = 14.02 // Объявление переменной вещественного типа со значением 14.02 (32)


/* Логические типы */

let orangeGorilla = true // Объявление константы и задание ему значения Истина
let mangoGorilla = false // Объявление константы и объявление ему значения Ложь

if (orangeGorilla) {
    print("Я люблю гориллу со вкусом Orange")
} else {
    ("Я люблю гориллу со вкусом Mango")
}
// Выведет "Я люблю гориллу со вкусом Orange"


/* Кортежи */

let http404Error = (404, "Not Found") // Объявление кортежа со значениями Int и String
print(http404Error) // Выведет (404, Not Found)

let (statusCode, statusMessage) = http404Error // Разложение кортежа на отдельные константы
print("The status code is \(statusCode)") // Выведет "The status code is 404"
print("The status message is \(statusMessage)") // Выведет "The status message is Not Found"

let (justStatusCode, _) = http404Error // Получение только одного значения кортежа
print("Just the status code is \(justStatusCode)") // Выведет "Just the status code is 404"

let simpleCotezh = ("pineapple", "orange", "mango") // Объявление нового кортежа
print(simpleCotezh.0) // Получения доступа к кортежу по числовому индексу

let macbookType = (name: "Macbook", year: 2021) // Объявление кортежа с присвоением имен каждому элементу
print(macbookType.name, macbookType.year) // Выведет "Macbook 2021"


/* Работа с операторами */

var h = 1
var j = 3
h = j // Изменение значения переменной j на значение переменной h

let (m, n) = (2, 8) // Присовение значений элементам кортежей: m = 2 , n = 8

1 + 2 // Оператор сложения
4 - 2 // Оператор вычитания
3 * 4 // Оператор умножения
8 / 2 // Оператор деления

10 % 3 // Оператор целочисленного деления. Возвращает остаток от деления.

let five = 5
let minusFive = -five // Оператор унарного минуса
print(five) // Выведет -5

let minusTwo = -2
let alsoMinusTwo = +minusTwo // Оператор унарного плюса
print(minusTwo) // Выведет -2, так как оператор унарного плюча ничего не меняет

var k = 2 // Составной оператор присваивания
k += 2 // Выведет 4

5 == 5 // Равно
5 != 3 // Не равно
5 > 3 // Больше
5 < 8 // Меньше
5 >= 2 // Больше или равно
5 <= 8 // Меньше или равно

var pi = 3.14
var valuePi = true
var examPi = valuePi ? "Верно" : "Не верно" // Выведет "Верно", так как valuePi истина

