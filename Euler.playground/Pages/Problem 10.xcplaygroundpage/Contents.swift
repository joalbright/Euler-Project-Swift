
// Summation of Primes

func sumOfPrimes(max: Int) -> Int {
    
    return max.primes().reduce(0, combine: +)
    
}

let sumOfPrimesFor10 = sumOfPrimes(10) // 17
let sumOfPrimesFor2000000 = sumOfPrimes(2000000) // 142913828922

// One Liner

// 2000000.primes().reduce(0, combine: +)