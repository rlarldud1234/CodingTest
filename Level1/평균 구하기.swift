import Foundation

func solution(_ x: [Int]) -> Double {
    var sum = 0
    for i in x {
        sum += i
    }

    return Double(sum) / Double(x.count)
}
