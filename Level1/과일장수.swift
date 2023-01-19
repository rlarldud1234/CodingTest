import Foundation

func solution(_ k: Int, _ m: Int, _ score: [Int]) -> Int {
    var score = score.sorted(by: >)
    var answer = 0
    for index in 1...score.count {
        if index % m == 0 {
            answer += score[index - 1] * m
        }
    }
    return answer
}



