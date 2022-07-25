import Foundation

func solution(_ strings: [String], _ n: Int) -> [String] {
    return strings.sorted(by: { first, second in
        let arr1 = Array(first)
        let arr2 = Array(second)
        if arr1[n] == arr2[n] {
            return first < second
        }
        return arr1[n] < arr2[n]
    })
}
