//P5
//合并空值运算符：?? 
var a: Int? = nil
var a1 = a != nil ? a! : 0
var b = 15
var result = a ?? b//如果a为nil那么就显示b的值，如果a有值那么返回a展开的值

print(a1)
print(result)

//P6
//可选类绑定
var someOption: Int? = 10
if let value = someOption {//如果可选变量有值那就赋值给value条件为真
    print("\(someOption!)")
} else {////如果可选变量无值那就赋值给value条件为假
    print("nil\n")
}

//隐式展开
var a2: Int! = 100
var b1:Int = a2
print(b1)
a2 = nil //隐式展开可以用来让变量变为nil
print(a2)