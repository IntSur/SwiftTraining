import SwiftUI
//P12
//初始化集合
var someSet1:Set = [1,2,3,4,5]
print(someSet1)//集合是无序的

var someSet2:Set<String> = ["this","is","an","example","set"]
print(someSet2)

var emptySet:Set<Double> = []
print(emptySet)

//增删改查
var someSet3:Set = ["iOS","MacOS","Swift","Playground"]
//新增一个元素
someSet3.insert("iPadOS")
print(someSet3)

//删除一个元素
someSet3.remove("Swift")
someSet3.remove("Playground")
print(someSet3)

//合并两个集合
var addSet:Set = ["WatchOS","visionOS","tvOS"]
var newSet1 = someSet3.union(addSet)
print(newSet1)

//列出两个集合的不同元素
addSet.remove("tvOS")
var diffSet1 = someSet3.symmetricDifference(addSet)
print(diffSet1)

//判断集合是否相等
var compSet1:Set = [1,2,3]
var compSet2:Set = [3,2,1]
if compSet1 == compSet2 {
    print("They are equal.")
} else {
    print("They aren't equal.")
}

//过滤集合
print(someSet3)
var filterSet = someSet3.filter({(element) -> Bool in
    if element == "iPadOS" {
        return false
    } else {
        return true
    }
})
print(filterSet)

//遍历集合
for item in filterSet {
    print(item)
}
