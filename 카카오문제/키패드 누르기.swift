import Foundation

func solution(_ numbers: [Int], _ hand: String) -> String {
    var answer = String()
    let keypad = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [-1, 0, -2]]
    var left = -1
    var right = -2
    var lI = Int()
    var lJ = Int()
    var rI = Int()
    var rJ = Int()
    var resI = Int()
    var resJ = Int()
    
    for num in numbers {
        if num == 3 || num == 6 || num == 9 {
            right = num
            answer += "R"
        } else if num == 1 || num == 4 || num == 7 {
            left = num
            answer += "L"
        } else {
            for i in 0..<4 {
                for j in 0..<3 {
                    if right == keypad[i][j] {
                        rI = i
                        rJ = j
                    }
                    if left == keypad[i][j] {
                        lI = i
                        lJ = j
                    }
                    if num == keypad[i][j] {
                        resI = i
                        resJ = j
                    }
                }
            }
            if (abs(resI - rI) + abs(resJ - rJ)) > (abs(resI - lI) + abs(resJ - lJ)){
                left = num
                answer += "L"
            } else if (abs(resI - rI) + abs(resJ - rJ)) < (abs(resI - lI) + abs(resJ - lJ)) {
                right = num
                answer += "R"
            } else {
                if hand == "right" {
                    right = num
                    answer += "R"
                } else {
                    left = num
                    answer += "L"
                }
            }
        }
    }
    
    return answer
}
