import Foundation

func solution(_ topping: [Int]) -> Int {
    var answer = 0
    var toppingDic: [Int: Int] = [:]
    var bordSet = Set<Int>()

    topping.forEach {
        toppingDic[$0, default: 0] += 1
    }

    topping.forEach {
        toppingDic[$0]! -= 1
        bordSet.insert($0)
        
        if toppingDic[$0]! <= 0 {
            toppingDic.removeValue(forKey: $0)
        }

        if toppingDic.count == bordSet.count {
            answer += 1
        }

    }
    return answer
}
