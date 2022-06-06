import Foundation

let a = Int(readLine()!)!
let b = Int(readLine()!)!
var num = 0
var result = Array(repeating: Array(repeating: 0, count: b), count: a)

for i in 0..<a {
    for j in 0..<b {
        num += 1
        result[i][j] = num
    }
}

for i in result {
    print(i)
}
