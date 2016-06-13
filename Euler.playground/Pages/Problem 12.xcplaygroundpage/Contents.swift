
import UIKit

// TODO: This one is tricky. Still working on it.

// Highly Divisible Triangular Number

func valueForTriangularNumber(max: Int) -> Int {
    
    let primeFactors = max.primeFactors().sort { $0 > $1 }
    
    var count = 0
    var number = 1
    
    var value = 1
    
    loop : while count < primeFactors.count {
        
        number += 1
        
        guard number.isPrime() else { continue loop }
        
        value *= Int(pow(Double(number),Double(primeFactors[count] - 1)))
        
        count += 1
        
    }
    
//    var divisors: [Int] = []
//    
//    while divisors.count < max || !value.isTriangular() {
//        
//        value += 1
//        
//        divisors = value.divisors()
//        
//        print(value)
//        
//    }
    
    return value
    
}

let valueFor5 = valueForTriangularNumber(5) // 28
let valueFor500 = valueForTriangularNumber(500) //
