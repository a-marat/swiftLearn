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
