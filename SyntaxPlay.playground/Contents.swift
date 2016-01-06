//: Playground - noun: a place where people can play

import UIKit

//1.Swift支持所有C和Objective-C的基本类型，支持面向过程和面向对象的编程机制
//2.Swift提供了两种功能强劲的集合类型：数组和字典
//3.元组
//4.可选类型。
//5.Swift是一种类型安全的语言。
//6.Swift是编程语言,Xcode提供了swiftc编译器来编译Swift程序
//7.开发环境：OS X系统，Xcode6.1或者以上


//数据类型
//1.变量与常量
//2.整型与浮点型
//3.元组类型
//4.可选类型


//
//  main.swift
//  SwiftStudy
//
//  Created by 金飞 on 15/11/10.
//  Copyright © 2015年 Fei Jin. All rights reserved.
//

import Foundation

print("Hello, World!")

var str = "hello"

str +=
"world"

let 👻 = "dog"


var `class` = 3


var name = "Lucky"
let name1 = "Lucky"
var age:Int
let age1:Int
var string: String = "smile"
let string1: String = "smile"


print("Here name is \(name)")

let oneMillion = 1_000_000

let price = 0110

var book1:Int16 = 100
var book2:Int32 = 30

var totalPrice = Int32(book1) + book2
var totalPrice1 = book1 + Int16(book2)

var w = 4.0/0.0
var w1 = -4.0/0.0

var f = 0.0/0.0

var width:Float = 2.1
var height:Double = 3.9

var area1 = width * Float(height)
var area2 = Double(width) * height


var area3 = Int(width) * 4

typealias Age = UInt16

var score = (140,140,"优秀")

var health : (Int , Int , String)
health = (183,78,"良好")

print(health)

print(health.0)

var test : (Int,(Int,String))
test = (10,(100,"swift"))
print(test.0)
print(test.1.0)

var score2 = (math:140,english:140,assessment:"A")


var score3 : (math:Int,english:Int,assessment:String)
score3 = (math:140,english:140,assessment:"A")

print(score2)

print(score3)


score3 = (english:140,math:140,assessment:"A")


print(score3.english)






var str2 = "HelloGreek"

var num:Int? = Int(str2)

print(num)


var num1 : Int? = 10
var num2 : Int? = 20

if num1 != nil && num2 != nil{
    let sum = num1! +
        num2!
    print(sum)
}
else{
    print("num1或者num2为nil，不能进行强制解析")
}


//可选绑定
var str3:String! = "swift"

if var tmp = str3{
    print("str3的值为\(tmp)")
}else{
    print("str3的值为nil ,不能解析")
}

var possibleStr :String! = "jikexueyuan"//隐式解析可选类型
print(possibleStr)



var a = +5.2
var b = -3.1

print("a/b:\(a/b)")

print((-5.2)%(3.1))


print(8&-1)

print(3&*2)

print(0&-1)


let ta = 8
//let tb = a &/ 0
//print(tb)


for a in 0..<10{
    print(a)
}






for a in 0...10{
    print(a)
}


for a in 0...10 {
    print(a)
}



print(Int.max)
print(Int.min
)
print(Int32.min
)

print(INT32_MAX)


var aaa :String? = "aaa"

var bbb : Int?


print(aaa!)








