import Foundation

func solution(_ x: Int64) -> [Int] {
    let num = String(x).reversed()
    var arr = [Int]()
    num.forEach { arr.append(Int(String($0)) ?? 0) }
    return arr
}
