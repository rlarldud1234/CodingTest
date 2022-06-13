import Foundation

var x = Int(readLine()!)

var count = 0
func solution(_ n: Int) -> Int {
    var d = Array(repeating: 0, count: n+1)
    d[1] = 1
    d[2] = 1
    for i in 3..<n+1 {
        d[i] = d[i-1] + d[i-2]
        count += 1
    }
    return d[n]
}

print(solution(x!), count)
