import Foundation

func solution(_ n: Int) -> Int {
    var d = Array<Int>(repeating: 0, count: n+1)
    if d[n] != 0 {
        return d[n]
    }
    if n == 1 || n == 2 {
        return 1
    }
    d[n] = solution(n-1) + solution(n-2)
    return d[n]
}
