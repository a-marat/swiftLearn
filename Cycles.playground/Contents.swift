import UIKit

/* Цикл for-in */

var names = ["Marat", "Arslan", "Mukhtar"]

for name in names {
    print("Hello \(name)")
}

let nameAge = ["Marat": 26, "Arslan": 26, "Mukhtar": 25]

for (name, age) in nameAge {
    print("Name \(name) age \(age)")
}

for index in 1...6 {
    print("\(index) умножить на 6 равно \(index * 6)")
}

for _ in 1...3 {
    print("Hello")
}

let minutes = 60

for tickMark in 0..<minutes {
    print(tickMark)
}


/* Цикл while */

/*

 while условие {
    инструкици
 }
 
 */

var number = 1

while number <= 10 {
    print(number)
    number += 1
}
print("Start")


/* Цикл repear while */

/*

 repeat {
    инструкции
 } while условие
 
*/

var number2 = 1

repeat {
    print(number2)
    number2 += 1
} while number2 <= 5

print("Finish")

/* Break */

var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 5 {
        print("Yes")
        break
    }
    
    countDown -= 1
}
