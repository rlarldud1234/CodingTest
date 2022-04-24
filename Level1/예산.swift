import Foundation

func solution(_ d: [Int], _ budget: Int) -> Int {
    var budget = budget
    let array = d.sorted()
    var count = 0

    for i in array {
        if budget >= i {
           budget -= i
            count += 1
        }
    }
    return count
}

// 다른 방법

//func solution(_ d: [Int], _ budget: Int) -> Int {
//    var budget = budget
//
//    return d.sorted().filter {
//        budget -= $0
//        return budget >= 0
//    }.count
//}
