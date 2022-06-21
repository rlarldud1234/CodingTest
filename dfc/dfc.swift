import Foundation

let graph = [
    [],
    [2, 3, 8],
    [1, 7],
    [1, 4, 5],
    [3, 5],
    [3, 4],
    [7],
    [2, 6, 8],
    [1, 7]
]

var visited = Array(repeating: false, count: 9)
func dfs(_ graph: [[Int]], _ start: Int) {
    visited[start] = true
    print(start)

    for i in graph[start] {
        if !visited[i] {
            dfs(graph, i)
        }
    }
}
