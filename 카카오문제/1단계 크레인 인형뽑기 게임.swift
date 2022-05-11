import Foundation

func solution(board: [[Int]], moves: [Int]) -> Int {
    var count = 0
    var board1 = board
    var stack = [Int]()

    for i in moves {
        for j in 0..<board.count {
            if board1[j][i-1] != 0 {
                stack.append(board1[j][i-1])
                board1[j][i-1] = 0
                print(stack)
                break
            }
        }
        if stack.count > 1 {
            if stack[stack.count - 1] == stack[stack.count - 2] {
                stack.removeLast()
                stack.removeLast()
                count += 2
            }
        }
    }
    return count
}

print(solution(board: [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], moves: [1,5,3,5,1,2,1,4]))
