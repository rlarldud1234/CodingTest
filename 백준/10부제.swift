import Foundation

let number: String = String(readLine()!)
var arr: [String] = readLine()!.components(separatedBy: " ")
var result: Int = 0

arr.forEach {
    if $0 == number {
        result += 1
    }
}

print(result)
