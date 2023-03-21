import Foundation

func solution(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {
    var answer: [Int] = []

    for i in Int(left)...Int(right) {
        answer.append(max(i / n + 1, i % n + 1))
    }

    return answer
}

// i와 j값 중 큰 값 + 1을 해준 값이므로 이렇게 풀이했습니다.
