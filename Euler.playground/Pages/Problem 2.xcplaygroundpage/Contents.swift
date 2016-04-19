
// Sum of the Even Fibonacci Numbers

func sumOfEvenFibonacci(max: Int) -> Int {

    var num1 = 1
    var num2 = 2
    var even: [Int] = [2]
    
    while num2 < max {
        
        let new = num1 + num2
        num1 = num2
        num2 = new
        if new % 2 == 0 { even.append(new) }
        
    }
    
    return even.reduce(0) { $0 + $1 }
    
}

sumOfEvenFibonacci(4000000)
