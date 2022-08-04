import Foundation

func solution(_ N: Int, _ stages: [Int]) -> [Int] {
    var dic = [Int: Double]()
    var count = stages.count
    var arr = Array(repeating: 0, count: N+2)
    stages.forEach {
        arr[$0] += 1
    }
    for i in 1...N {
        dic.updateValue(arr[i] == 0 ? 0 : Double(arr[i]) / Double(count), forKey: i)
        count -= arr[i]
    }
    let answer = dic.sorted { first, second in
        if first.value == second.value {
            return first.key < second.key
        }
        return first.value > second.value
    }.map { $0.key }

    return answer
}
