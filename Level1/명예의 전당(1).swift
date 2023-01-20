import Foundation

func solution(_ k: Int, _ score: [Int]) -> [Int] {
    var answer: [Int] = []
    var biggerScore: [Int] = []
    for num in score {
        if biggerScore.count == k {
            biggerScore[k-1] = biggerScore.last ?? 0 < num ? num : biggerScore.last ?? 0
            biggerScore.sort(by: >)
            answer.append(biggerScore.last ?? 0)
            continue
        }
        biggerScore.append(num)
        biggerScore.sort(by: >)
        answer.append(biggerScore.last ?? 0)
    }
    return answer
}
