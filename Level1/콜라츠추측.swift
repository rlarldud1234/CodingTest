import Foundation

func solution(_ x: Int) -> Int {
    var num = x
    var i = 0
    while(num != 1) {
        if i == 500 {
            i = -1
            break
        } else if num % 2 == 0 {
            num /= 2
        } else {
            num *= 3
            num += 1
        }
        i += 1
    }
    return i
}
