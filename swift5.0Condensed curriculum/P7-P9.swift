//P7
//switch语法
var someValue = 10
switch someValue {
    case 10:
        print("\(someValue)\n")
    default:
        print("no value\n")
}

//switch拆分元组
var someTuple = ("swift",5.0)
switch someTuple {
    case let (language,version):
        print("language = \(language) , version = \(version)\n")
    default:
        print("no matched\n")
}

var anotherTuple = (5,10)
switch anotherTuple {
case let (num1,num2) where num1 > num2:
    print("num1 = \(num1),num2 = \(num2)\n")
case let (num1,num2) where num1 < num2:
    print("num1 = \(num1),num2 = \(num2)\n")
default:
    print("no matched\n")
}

//P8
// 区间运算符
var range1 = 0...5
print("\(range1)")
var range2 = 0..<5
print("\(range2)")
var range3 = (-2.5)..<5
print("\(range3)")
var range4 = 0...
print("\(range4)")

for index in (0...5) {
    print("\(index)")
}

for index in stride(from: 0, to: 4, by: 2) { //to:不包括结尾
    print("\(index)")
}

for index in stride(from: 0, through: 4, by: 2) { //through:包括结尾
    print("\(index)")
}

for index in stride(from: 0, through: 4, by: 2).reversed() { //through:包括结尾,reversed:顺序反转
    print("\(index)")
}

for index in 0...2 {
    if index == 1 {
        continue
    }
    print("\(index)")
    for index in 0...3 {
        print("\(index)")
    }
}


//P9
//while,repeat while
var a = 0
while a < 5 {
    a += 1
    print("\(a)")
}
a = 0
repeat {
    a += 1
    print("\(a)")
} while a < 5 