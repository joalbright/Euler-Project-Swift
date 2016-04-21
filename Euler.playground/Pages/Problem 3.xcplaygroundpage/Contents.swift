
import UIKit

// Largest Prime Factor

func largestPrimeFactor(num: Int) -> Int? {
    
    for n in Array(0..<sqrt(num)).reverse() {
        
        if num % n == 0 && n.isPrime() { return n }
        
    }
    
    return nil
    
}

let largestFactorFor13195 = largestPrimeFactor(13195) // 29
let largestFactorFor600851475143 = largestPrimeFactor(600851475143) // 6857

// One Liner

// Array(2..<sqrt(600851475143)).reverse().firstOccurence { 600851475143 % $0 == 0 && $0.isPrime() }

