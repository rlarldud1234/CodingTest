import Foundation

func solution(_ s: String) -> [Int] {
    var dic = [String: Int]()
    var str = [String]()
    var answer = [Int]()
    s.forEach { str.append(String($0)) }

    for index in 0..<str.count {
        if dic[str[index]] == nil {
            answer.append(-1)
            _ = dic.updateValue(index, forKey: str[index])
        } else {
            answer.append(index - (dic[str[index]] ?? 0) )
            _ = dic.updateValue(index, forKey: str[index])
        }
    }
    return answer
}


