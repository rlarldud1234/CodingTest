import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var arr1 = arr
    var minNumber = 10000
    var minI = 0

    for i in 0..<arr1.count {
        if arr[i] < minNumber {
            minNumber = arr[i]
            minI = i
        }
    }
    arr1.remove(at: minI)
    if arr1 == [] {
        arr1.append(-1)
        return arr1
    } else {
        return arr1
    }
}
print(solution([4, 3, 2, 1]))
