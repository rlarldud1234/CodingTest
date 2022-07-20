import Foundation

func solution(_ s: String) -> String {
    var arr = [String]()
    let str = s.lowercased()
    str.forEach {
        arr.append(String($0))
    }
    arr[0] = arr[0].uppercased()
    for i in 0..<arr.count {
        if i == arr.count - 1 && arr[i] == " " {
            break
        } else if arr[i] == " " {
            arr[i+1] = arr[i+1].uppercased()
        }
    }
    return arr.joined()
}



