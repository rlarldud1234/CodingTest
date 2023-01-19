import Foundation

func solution(_ storey: Int) -> Int {
    var storey = storey
       var result = 0

       while storey != 0 {
           // 상승의 경우
           if storey % 10 > 5 || (storey % 10 == 5 && (storey / 10) % 10 >= 5) {
               result += 10 - (storey % 10)
               // 앞자리 + 1
               storey = (storey / 10) + 1
           } else {
           // 하강의 경우
               result += storey % 10
               storey = storey / 10
           }
       }

       return result
}
