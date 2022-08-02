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
