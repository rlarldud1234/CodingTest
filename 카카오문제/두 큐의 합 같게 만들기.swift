import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    let array: [Int] = queue1 + queue2
    var left: Int = 0
    var right: Int = queue1.count
    var answer: Int = 0
     
    var queue1Sum: Int = queue1.reduce(0, +)
    let queue2Sum: Int = queue2.reduce(0, +)
    let goal: Int = (queue1Sum + queue2Sum) / 2
    
    if (queue1Sum + queue2Sum) % 2 != 0 {
        return -1
    }
    
    if goal < queue1.max()! || goal < queue2.max()! {
        return -1
    }

    while right < array.count && left <= right {
        if queue1Sum < goal {
            queue1Sum += array[right]
            right += 1
        } else if queue1Sum > goal {
            queue1Sum -= array[left]
            left += 1
        } else {
            break
        }
        answer += 1
    }

    if queue1Sum != goal {
        return -1
    }
    
    return answer
}
