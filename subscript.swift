struct Multiplication {
    let multiplier: Int
    subscript(index: Int) -> Int {
        get {
            return multiplier*index
        }
    }
}

let someMultiplication = Multiplication(multiplier: 3)
print(someMultiplication[6])

var optionvalue: Int? = 10

if optionvalue == nil {
    print("no value\n")
} else {
    print("value = \(optionvalue!)")
}