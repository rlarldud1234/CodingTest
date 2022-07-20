import Foundation

func solution(_ priorities: [Int], _ location: Int) -> Int {
    var j = 0
    var max = 0
    var result = 0
    var queue = priorities
    var locationIndex = location

    while queue != [] {
        j = queue.first!
        max = queue.max()!
        if j == max && locationIndex == 0 {
            queue.removeFirst()
            result += 1
            break
        } else if locationIndex == 0 {
            locationIndex = queue.count
        } else if j == max {
            queue.removeFirst()
            result += 1
            locationIndex -= 1
        } else {
            locationIndex -= 1
            queue.removeFirst()
            queue.append(j)
        }
    }
    return result
}
