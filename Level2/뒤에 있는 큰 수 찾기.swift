import Foundation

func solution(_ numbers: [Int]) -> [Int] {
    var answer: [Int] = Array(repeating: -1, count: numbers.count)
    var stack: [Int] = []

    for index in 0..<numbers.count {
        while stack != [] && numbers[stack.last!] < numbers[index] {
            answer[stack.popLast()!] = numbers[index]
        }
        stack.append(index)
    }

    return answer
}
