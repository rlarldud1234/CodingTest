import Foundation

func solution(_ x: Int) -> Bool {
    let number = String(x)
    var sum = 0

    for i in number {
        sum += Int(String(i)) ?? 0
    }

    return x % sum == 0
}
