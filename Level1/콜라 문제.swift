import Foundation

func solution(_ a: Int, _ b: Int, _ n: Int) -> Int {
    var answer = 0
    var n = n
    while n >= a {
        answer += n / a * b
        n = ((n/a) * b) + (n % a)
    }
    return answer
}
