import Foundation

func solution(_ s: String) -> Bool {
    var stack = [String]()
    var index = 0

    s.forEach {
        stack.append(String($0))
        if String($0) == ")" && index > 0 && stack[index-1] == "(" {
            stack.remove(at: index)
            stack.remove(at: index - 1)
            index -= 2
        }
        index += 1
    }
    return stack.count == 0 ? true : false
}


