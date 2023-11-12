import UIKit

var greeting = " Hello, playground."
//P10
var someString = "This is an example string."

//获取第一个字符
print(someString[someString.startIndex])

//获取最后一个字符（非行尾结束符）
print(someString[someString.index(before: someString.endIndex)])

//获取开头后六位的字符
print(someString[someString.index(someString.startIndex , offsetBy: 6)])

//获取开始数11到17范围的字符串
var startCharacter = someString.index(someString.startIndex , offsetBy: 11)
var endCharacter = someString.index(someString.startIndex , offsetBy: 17)
print(someString[startCharacter...endCharacter])

//获取字符串内第一次出现i的位置
var characterToBeFound:Character = "i"
if let value = someString.firstIndex(of: characterToBeFound) {
    print(someString[someString.startIndex...value])//不建议使用这个，编译会报错
} else {
    print("someString.firstIndex(of: '\(characterToBeFound)') is nil.")
}

//获取第四个字符
print(someString.prefix(4))

//获取后7个字符
print(someString[someString.index(someString.endIndex , offsetBy: -7)...someString.index(before: someString.endIndex)])
print(someString[someString.index(someString.endIndex , offsetBy: -7)..<someString.endIndex])

//检查是否有目标字符串“example”
print(someString.contains("example"))

//检查是否有目标字符串“examplex“中包含的字符串
print(someString.contains(where: String.contains("examplex")))

//检查前缀是不是“This”
print(someString.hasPrefix("This"))

//检查后缀是不是“string”
print(someString.hasSuffix("string."))

//在字符串后追加一串字符串
someString.append(greeting)
print(someString)

//在原来的字符串的第二个单词后加入一段新字符串
someString.insert(contentsOf: "new word ", at: someString.index(someString.startIndex, offsetBy: 8))
print(someString)

//将原来字符串里索引4到6的位置，替换成其他字符串
var index1 = someString.index(someString.startIndex,offsetBy: 4)
var index2 = someString.index(someString.startIndex,offsetBy: 6)
var range = index1...index2
someString.replaceSubrange(range, with: "'s")
print(someString)

//将原字符串中的一个单词替换成其他单词
print(someString.replacingOccurrences(of: "playground", with: "swift"))

//删除原来字符串中索引4到6位置的字符
index1 = someString.index(someString.startIndex, offsetBy: 4)
index2 = someString.index(someString.startIndex, offsetBy: 6)
someString.removeSubrange(index1...index2)
print(someString)



//遍历字符串
for item in someString {
    print(item)
}
//全部遍历出来的字符太多？试试利用索引打印
for index in 0..<(someString.count - 10) {
    print(someString[someString.index(someString.startIndex, offsetBy: index)])
}
print(someString.count)
print(type(of: someString.count))
//同样你可以将其反转
for index in (0..<10).reversed() {
    print(someString[someString.index(someString.startIndex, offsetBy: index)])
}

//多行字符串显示
var someMutilinesString =
"""
*********************************************
*                                           *
*      Welcome to the world of swift.       *
*                                           *
*********************************************
"""
print(someMutilinesString)

//当字符串内有双引号也需要显示
var someDoubleQuotationMarks = #"We seems to need some many "Double Quotation Marks""#
print(someDoubleQuotationMarks)
