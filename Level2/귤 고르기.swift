import Foundation

func solution(_ k: Int, _ tangerine: [Int]) -> Int {
    var answer = 0
    var count = 0
    let tangerine = tangerine.sorted()
    var dic: [Int: Int] = [:]

    for index in tangerine {
        dic.updateValue((dic[index] ?? 0) + 1, forKey: index)
    }
    _ = dic.sorted { first, second in
        first.value > second.value
    }
    .map { key, value in
        if count < k {
            count += value
            answer += 1
        }
    }

    return answer
}
