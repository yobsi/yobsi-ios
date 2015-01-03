// Playground - noun: a place where people can play

import UIKit

// Prob 1

func makeAbba(a : String, b : String) -> String {
  return a+b+b+a
}

makeAbba("Hi", "Bye")
makeAbba("Yo", "Alice")
makeAbba("What", "Up")

// Prob 2

func nTwice(str : String, n : Int) -> String {
  var lhs : String = ""
  var rhs : String = ""
  
  let strArr = Array(str)
  
  for idx in 0..<n {
    lhs.append(strArr[idx])
    rhs.append(strArr.reverse()[n - idx - 1])
  }

  return lhs + rhs
}


nTwice("Hello", 2)
nTwice("Chocolate", 3)
nTwice("Chocolate", 1)

// Prob 3
func middleTwo(str : String) -> String {
  let length = countElements(str)
  if length % 2 == 0 {
    let range = Range(start: advance(str.startIndex, (length / 2) - 1), end: advance(str.startIndex, length / 2 + 1))
    
    return str.substringWithRange(range)
  } else {
    return ""
  }
  
}

middleTwo("string")
middleTwo("code")
middleTwo("Practice")
middleTwo("123")

// Prob 4

