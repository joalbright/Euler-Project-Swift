
import UIKit

// Smallest Multiple

func smallestProductOf(numbers: Int) -> Int? {
    
    let primes = Array(2...numbers).filter { for i in 2..<$0 { if $0 % i == 0 { return false } }; return true }
    let primesMultiplied = primes.reduce(1, combine: *)
    
    var num = primesMultiplied
    
    loop : while num < Int.max {
        
        num += primesMultiplied
        
        for i in numbers/2...numbers { if num % i != 0 { continue loop }  }
        
        return num
        
    }
    
    return nil
    
}

let smallestProductOf10 = smallestProductOf(10) // 2520
let smallestProductOf20 = smallestProductOf(20) // 232792560
