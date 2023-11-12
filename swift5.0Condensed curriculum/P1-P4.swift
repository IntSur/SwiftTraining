//声明可选类型
var someOptionValue: Int? = 10

//声明元祖
var someTuple = (19,"hello",true)
var someTuple2:(Int,String,Bool) = (10,"hello",true) 
var someTuple3:(name1:Int,name2:String,_) = (10,"hello","12")
var someTuple4 = (name1:10,name2:"swift",5,0)
var (name1,name2) = (10,"swift")

//判断可选类型有没有值可以被当作if判断条件
if someOptionValue == nil {
    print("someOptionValue = nill\n")
} else {
    print("someOptionValue = \(someOptionValue!)")
}

//元祖元素可以被修改
someTuple2.0 = 20

print(someTuple.1)
print(someTuple.2)
print(someTuple.0)

print(someTuple2.0)
print(someTuple2.1)

print(someTuple3.name1)
print(someTuple3.name2)
print(someTuple3.2)

print(name1)
print(name2)
