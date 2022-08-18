import UIKit
import Darwin

/* Условия if, else if, else */

var age1 = 13
var age2 = 24

if age1 >= 18 && age2 >= 18 { // Условие не выполнится, потому что одно из них ложь
    print("Вам обоим есть 18 лет")
}

if age1 >= 18 || age2 >= 18 { // Условие выполнится, потому что одно из них истина
    print("Одному из вас есть 18 лет")
}

var cardVisa = 3
var cardMir = 3

if cardVisa > 15 && cardMir > 5 {
    print("На картах есть деньги")
} else if (cardVisa + cardMir) <= 0 {
    print("На карте закончились деньги")
} else {
    print("У вас на картах меньше трех рублей")
}


/* Условие switch */

let weeklyDay = "Пятница"

switch weeklyDay {
case "Понедельник": print("Спланировать неделю")
case "Вторник": print("Митап")
case "Среда": print("Встреча с клиентом")
case "Четверг": print("Организация")
case "Пятница": print("Итоги недели")
    fallthrough // Выведет помимо кейса еще и дефолтное значение
default: print("Не рабочий день")
}

var age3 = 11

switch age3 {
case 0...10: print("Ты еще маленький")
case 11..<20: print("Ты подросток")
case 20...60: print("Ты взрослый")
case 80...: print("Ты уже старик")
default: print("Сколько тебе лет?")
}
