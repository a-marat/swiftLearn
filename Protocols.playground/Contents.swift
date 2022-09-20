import UIKit

// Протоколы

protocol ICanByIt {
    var label: String { get set }
    var price: Int { get set }
}

struct milk: ICanByIt {
    var label: String
    var price: Int
}

class Book: ICanByIt {
    var label: String
    var amount: Int
    var price: Int
    
    init(label: String, amount: Int, price: Int) {
        self.label = label
        self.amount = amount
        self.price = price
    }
}

struct Bread: ICanByIt {
    var color: [String]
    var label: String
    var: price: Int
}

func buy(_ item: ICanByIt) {
    print("Я покупаю \(item.label). Это стоило мне \(item.price)")
}


