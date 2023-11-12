import SwiftUI
//P11
//数组的几种初始化方式
var someArray1 = [1,2,3,4,5]
print(someArray1)

var someArray2:[String] = ["hello","swift"]
print(someArray2)

var someArray3:Array<Double> = [1.4,1.6]
print(someArray3)
someArray3[0] = 1.8
print(someArray3[0])

//使用初始化器
var someArray4 = [Int]()

var someArray5 = Array(repeating: -1, count: 5)
print(someArray5)

//增删改查
var someArray6 = ["Hello","welcome","to","the","world","of","swift"]

//原有基础上新增一个数组
var appendArray = ["."]
someArray6 += appendArray
print(someArray6)

//原有基础上新增一个字符串
someArray6.append("This is a new string.")
print(someArray6)

//插入一个元素
someArray6.insert("Insert Char", at: 9)
print(someArray6)

//检查是否包含一个元素
someArray6.contains("Insert")

//替换掉两个元素
someArray6.replaceSubrange(5...6, with: ["of","playground"])

//删除一个元素
someArray6.remove(at: 9)
print(someArray6)

//数组排序
someArray1.sort { s1, s2 in
    if s1 > s2 {
        return true
    } else {
        return false
    }
}
print(someArray1)

//过滤元素
var newsomeArray6 = someArray6.filter({(element) -> Bool in
    if element == "This is a new string." {
        return false
    } else {
        return true
    }
})
print(newsomeArray6)

//数组比较
var compareArray1 = [1,2,3]
var compareArray2 = [1,2,3]
if compareArray1 == compareArray2 {
    print("Arrays相等")
} else {
    print("Arrays不相等")
}

//遍历
//直接遍历
for item in someArray6 {
    print(item)
}

for item in someArray6[0...1] {
    print(item)
}

for item in someArray6[2...] {
    print(item)
}
//索引遍历
for index in 0..<someArray6.count {
    print(someArray6[index])
}
