
// Sum of the Multiples of 3 and 5

func sumOfMultiples(num: Int, divisables: Int...) -> Int {
    
    var multiples: [Int] = []
    
    for i in 1..<num {
        
        if (divisables.filter { i % $0 == 0 }).count > 0 { multiples.append(i) }
        
    }
    
    return multiples.reduce(0) { $0 + $1 }
    
}

let sumOf10 = sumOfMultiples(10, divisables: 3,5) // 23
let sumOf1000 = sumOfMultiples(1000, divisables: 3,5) // 233168

// One Liner (sadly it is too complex for the compiler)

// Array(1..<1000).filter { ($0 % 3) == 0 || ($0 % 5) == 0 }.reduce(0) { $0 + $1 }