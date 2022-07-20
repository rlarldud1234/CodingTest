import Foundation

func solution(_ progress: [Int], _ speeds: [Int]) -> [Int] {
    var queue = [Int]()
    var max = 0
    var answer = 0
    var result = [Int]()

    for i in 0..<speeds.count {
        if (100 - progress[i]) % speeds[i] == 0 {
            queue.append((100 - progress[i]) / speeds[i])
        } else {
            queue.append((100 - progress[i]) / speeds[i] + 1)
        }
    }
    queue.append(101)
    for q in 0..<queue.count {
        if max < queue[q] {
            result.append(answer)
            answer = 0
            max = queue[q]
        }
        answer += max >= queue[q] ? 1 : 0
    }
    result.removeFirst()
    return result
}
