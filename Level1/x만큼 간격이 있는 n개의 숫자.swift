import Foundation

func solution(_ x: Int, _ n: Int) -> [Int] {
    var arr = [Int]()
    var sum = 0
    for _ in 1...n {
        sum += x
        arr.append(sum)
    }
    return arr
}

/* func solution(_ x: Int, _ n: int) -> [Int] {
    return Array(1...n).map { $0 * x }
 */

