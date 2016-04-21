
import UIKit

// Sum Square Difference

func sumOfSquareDifference(max: Int) -> Int {
    
    let sumOfSquares = Array(1...max).reduce(0) { $0 + $1 * $1 }
    
    let sum = Array(1...max).reduce(0, combine: +)
    let squareOfSums = sum * sum
    
    return squareOfSums - sumOfSquares
    
}

let squareDifferenceOf10 = sumOfSquareDifference(10) // 2640
let squareDifferenceOf100 = sumOfSquareDifference(100) // 25164150

// One Liner

// Int(pow(Double(Array(1...100).reduce(0, combine: +)),2)) - Array(1...100).reduce(0) { $0 + $1 * $1 }