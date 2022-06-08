import Foundation

func solution(_ s: String) -> Int {
    var answer = String()
    var queue = String()

    for string in s {
        if Int(String(string)) != nil {
            answer += String(string)
        } else {
            queue += String(string)
        }
        switch queue {
        case "zero":
            answer += "0"
            queue = ""
        case "one":
            answer += "1"
            queue = ""
        case "two":
            answer += "2"
            queue = ""
        case "three":
            answer += "3"
            queue = ""
        case "four":
            answer += "4"
            queue = ""
        case "five":
            answer += "5"
            queue = ""
        case "six":
            answer += "6"
            queue = ""
        case "seven":
            answer += "7"
            queue = ""
        case "eight":
            answer += "8"
            queue = ""
        case "nine":
            answer += "9"
            queue = ""
        default:
            continue
        }
    }

    return Int(answer)!
}

