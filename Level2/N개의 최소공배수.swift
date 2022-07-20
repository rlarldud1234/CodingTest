import Foundation

func GCD(_ min: Int, _ max: Int) -> Int {
    let remain = min % max
    if remain == 0 {
        return max
    }
    else {
        return GCD(max, remain)
    }
}

// 최소공배수
func LCM(_ a: Int, _ b:Int) -> Int {
    return a * b / GCD(a,b)
}

func solution(_ arr:[Int]) -> Int {
    var a = 1
    var result = 0
    for i in arr {
        result = LCM(a, i)
        a = result
    }
    return result
}
