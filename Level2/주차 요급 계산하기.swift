import Foundation

func solution(_ fees: [Int], _ records: [String]) -> [Int] {
    let defaultMinute = fees[0]
    let defaultMoney = fees[1]
    let minute = fees[2]
    let money = fees[3]
    var In = [String]()
    var Out = [String: Int]()
    for record in records {
        let arr = Array(record)
        let h = Int(String(arr[0...1]))! * 60
        let m = Int(String(arr[3...4]))!
        if record.contains("IN") {
            In.append("\(String(arr[6...9])) \(h + m)")
        } else {
            for i in 0..<In.count {
                if In[i].contains(String(arr[6...9])) {
                    let arr2 = Array(In[i])
                    Out.updateValue(((h + m) - Int(String(arr2[5...arr2.count - 1]))!) + (Out[String(arr[6...9])] ?? 0), forKey: String(arr[6...9]))
                    In.remove(at: i)
                    break
                }
            }
        }
    }
    let min = 1439
    while In != [] {
        let arr2 = Array(In[0])
        Out.updateValue((min - Int(String(arr2[5...arr2.count - 1]))!) + (Out[String(arr2[0...3])] ?? 0), forKey: String(arr2[0...3]))
        In.remove(at: 0)
    }
    let dic = Out.sorted { (first, second) in
        return Int(first.key) ?? 0 < Int(second.key) ?? 0
    }
    var result = [Int]()
    for d in dic {
        var answer = defaultMoney
        answer += defaultMinute - d.value >= 0 ? 0 : abs(Int(ceil(Double(d.value - defaultMinute) / Double(minute))) * money)
        result.append(answer)
    }
    return result
}

