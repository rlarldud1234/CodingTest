import Foundation

func getRank(_ num: Int) -> Int {
    switch num {
    case 6:
        return 1
    case 5:
        return 2
    case 4:
        return 3
    case 3:
        return 4
    case 2:
        return 5
    default:
        return 6
    }
}
func solution(_ lottos: [Int], _ win_nums: [Int]) -> [Int] {
    var results = [Int]()
    var count = 0
    var win = 0
    lottos.forEach {
        count += $0 == 0 ? 1 : 0
    }
    for i in win_nums {
        for j in lottos {
            if i == j {
                win += 1
            }
        }
    }
    results.append(getRank(win + count))
    results.append(getRank(win))
    return results
}
