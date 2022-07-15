import Foundation

func solution(_ left: Int, _ right: Int) -> Int {
    var count = 0
    var result = 0

    for n in left...right {
        for num in 1...n {
            count += n % num == 0 ? 1 : 0
        }
        result += count % 2 == 0 ? n : -n
        count = 0
    }
    return result
}

