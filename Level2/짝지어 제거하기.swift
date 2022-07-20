import Foundation

func solution(_ s: String) -> Int {
    var stack = [String]()
    var index = 0

    s.forEach {
        stack.append(String($0))
        if index > 0 && stack[index] == stack[index-1] {
            stack.remove(at: index)
            stack.remove(at: index-1)
            index -= 2
        }
        index += 1
    }
    return stack.count == 0 ? 1 : 0
}
