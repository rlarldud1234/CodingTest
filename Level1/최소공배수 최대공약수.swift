import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return 0 == mod ? min(a, b) : gcd(b, mod)
}
 
func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}
 
func solution(_ n:Int, _ m:Int) -> [Int] {
    return [gcd(n, m), lcm(n, m)]
}
