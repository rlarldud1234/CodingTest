import Foundation

func checkComma(_ char: String) -> String {
    var result  = char
    if result.first == "." {
        result.removeFirst()
    } else if result.last == "." {
        result.removeLast()
    }
    return result
}

func solution(_ new_id: String) -> String {
    var result = new_id
    result = result.lowercased()
    result = result.replacingOccurrences(of: "[^0-9a-z._-]", with: "", options: .regularExpression)
    result = result.replacingOccurrences(of: "[.]+", with: ".", options: .regularExpression)
    result = checkComma(result)
    result += result == "" ? "a" : ""
    while result.count > 15 {
        result.removeLast()
    }
    result = checkComma(result)
    while result.count < 3 {
        result += String(result.last!)
    }
    return result
}
