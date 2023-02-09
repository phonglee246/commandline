//
//  main.swift
//  command line
//
//  Created by phong on 09/02/2023.
//

import Foundation

print("Hello, World!")


var greeting = "Hello, playground"

func solveQuadraticEquation(a: Double, b: Double, c: Double) -> (Double?, Double?) {
    let discriminant = b * b - 4 * a * c
    if discriminant < 0 {
        return (nil, nil)
    }
    let x1 = (-b + sqrt(discriminant)) / (2 * a)
    let x2 = (-b - sqrt(discriminant)) / (2 * a)
    return (x1, x2)
}



var a,b,c: Double!
var checkin:Int = 0

while checkin < 1 {
    print("Enter an A:")
if let input = readLine(), let number = Double(input) {
    a = number
    checkin += 1
    print("You entered A: \(number)")
} else {
    print("Invalid input A")
}
    
}
    while checkin < 2 {
        print("Enter an B")
if let input = readLine(), let number = Double(input) {
    b = number
     checkin += 1
    print("You entered B: \(number)")
} else {
    print("Invalid input B")
}
        
    }
        while checkin < 3 {
            print("Enter an C:")
if let input = readLine(), let number = Double(input) {
    c = number
     checkin += 1
    print("You entered C: \(number)")
} else {
    print("Invalid input C")
}
         
}


//////
let solutions = solveQuadraticEquation(a: a, b: b, c: c)
if let x1 = solutions.0, let x2 = solutions.1 {
    print("The solutions are x1 = \(x1) and x2 = \(x2)")
} else {
    print("The equation has no real solutions")
}

