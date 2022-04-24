import Foundation

func solution(_ numbers: [Int]) -> Int {
    var num = 45

    for i in numbers {
        num -= i
    }

    return num
}
