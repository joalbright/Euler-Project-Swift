
import UIKit

infix operator -><- { }

public func -><-<T>(lhs: [T], rhs: [T]) -> [(T,T)] {
    
    let count = lhs.count < rhs.count ? lhs.count : rhs.count
    
    var newArray: [(T,T)] = []
    
    for i in 0..<count { newArray.append((lhs[i],rhs[i])) }
    
    return newArray
    
}

infix operator >== { }

public func >==<T: SignedIntegerType>(inout lhs: T, rhs: T) {
    
    if lhs > rhs { lhs = rhs }
    
}

infix operator <== { }

public func <==<T: SignedIntegerType>(inout lhs: T, rhs: T) {
    
    if lhs < rhs { lhs = rhs }
    
}