import Foundation

public func sqrt(num: Int) -> Int {
    
    return Int(sqrt(Double(num)))
    
}

extension Int {
    
    public func primes() -> [Int] {
        
        var numbers = Array(2...self)
        var primes: [Int] = []
        
        while numbers.count > 0 {
            
            guard let number = numbers.first else { break }
            numbers.removeFirst()
            
            if number.isPrime() {
            
                primes.append(number)
                numbers = numbers.filter { $0 % number != 0 }
                
            }
            
        }
        
        return primes
        
    }
    
    public func isPrime() -> Bool {
        
        guard abs(self) > 1 else { return false }
        for i in 2..<abs(self) { if abs(self) % i == 0 { return false } }
        return true
        
    }
    
}

extension Double {
    
    public func primes() -> [Double] {
        
        return Int(self).primes().map { Double($0) }
        
    }
    
}

extension SequenceType {
    
    public func firstOccurence(@noescape findElement: (Self.Generator.Element) throws -> Bool) rethrows -> Self.Generator.Element? {
        
        for item in self {
            
            print(try findElement(item),item)
            if try findElement(item) { return item }
            
        }
        
        return nil
        
    }
    
    subscript(range: Range<Int>) -> [Self.Generator.Element] {
        
        return enumerate().filter { range ~= $0.0 }.map { $0.1 }
        
    }
    
}


