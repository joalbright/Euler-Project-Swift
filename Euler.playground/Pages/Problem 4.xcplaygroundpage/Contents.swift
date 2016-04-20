
import UIKit

// Largest Palindrome Product

func largestPalindrome(digits: Int) -> Int? {
    
    let min = Int(pow(10,Double(digits) - 1))
    let max = Int(pow(10,Double(digits)) - 1)
    var product = Int(pow(Double(max),2)) + 1
    
    loop : while product > 0 {
        
        product -= 1
        
        let numbers = Array("\(product)".characters)
        
        for i in 0..<numbers.count/2 {
            
            guard numbers[i] == numbers[numbers.count - 1 - i] else { continue loop }
        
        }
            
        for num in Array(min..<max).reverse() {
            
            if product % num == 0 && product / num <= max { return product }
        
        }
        
    }
    
    return nil
    
}

let largestPalindromeFor2Digits = largestPalindrome(2) // 9009
let largestPalindromeFor3Digits = largestPalindrome(3) // 906609




