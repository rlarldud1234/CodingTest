import Foundation

func solution(_ A: [Int], _ B: [Int]) -> Int {
    let a: [Int] = A.sorted()
    let b: [Int] = B.sorted { first, second in
        return first > second
    }
    var result = 0

    for index in 0..<a.count {
        result += a[index] * b[index]
    }

    return result
}

