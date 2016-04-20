
import UIKit

// Largest Prime Factor

func largestPrimeFactor(num: Int) -> Int? {
    
    // reduce the values being tested to the square root
    let root = Int(sqrt(Double(num)))
    
    for n in Array(0..<root).reverse() {
        
        if num % n == 0 && (Array(2..<n).filter { n % $0 == 0 }).count == 0 { return n }
        
    }
    
    return nil
    
}

let largestFactorFor13195 = largestPrimeFactor(13195) // 29
let largestFactorFor600851475143 = largestPrimeFactor(600851475143) // 6857

// One Liner (this is gross because it does not have a loop break)

// Array(0..<Int(sqrt(600851475143.0))).reverse().filter { let n = $0; num % n == 0 && (Array(2..<n).filter { n % $0 == 0 }).count == 0 }.first