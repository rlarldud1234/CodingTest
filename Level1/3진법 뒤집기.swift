import Foundation

func solution(_ x: Int) -> Int {
    return Int(String(String(n, radix: 3).reversed()), radix: 3) ?? 0
}
