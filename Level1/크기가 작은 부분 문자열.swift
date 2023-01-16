import Foundation

func solution(_ t: String, _ p: String) -> Int {
    var answer = 0
    for i in 0..<(t.count - (p.count - 1)) {
        var str = [String]()
        let index = i
        var checkNum = ""
        let num = 0..<p.count
        t.forEach { str.append(String($0)) }
        num.forEach { checkNum += str[index + $0] }
        if Int(p) ?? 0 >= Int(checkNum) ?? 0 {
            answer += 1
        }
        checkNum = ""
    }
    return answer
}


