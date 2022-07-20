import Foundation

func solution(_ clothes: [[String]]) -> Int {
    var dic: [String: Int] = [:]
    var result: Int = 1
    for c in 0..<clothes.count {
        dic.updateValue((dic[clothes[c][1]] ?? 0) + 1, forKey: clothes[c][1])
    }
    for d in dic.values {
        result *= (d + 1)
    }
    
    return result - 1
}

