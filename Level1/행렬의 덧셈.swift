import Foundation

func solution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {
    var arr = Array(repeating: Array(repeating: 1, count: arr1[0].count), count: arr1.count)
    for i in 0..<arr1.count {
        for j in 0..<arr1[0].count {
            arr[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return arr
}

/*
 zip(arr1, arr2).map { zip($0, $1).map { $0 + $1 } }
 */
