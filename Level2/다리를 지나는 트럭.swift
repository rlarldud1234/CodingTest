import Foundation

func solution(_ bridge_length: Int, _ weight: Int, _ truck_weights: [Int]) -> Int {
    var time: Int = 0
    
    // 다리에 올라가 있는 트럭의 무게 총합
    var bridgeWeight: Int = 0
  
    // 다리를 표현한 배열, 모두 0으로 초기화
    var bridge: [Int] = Array(repeating: 0, count: bridge_length)
    var trucks: [Int] = truck_weights
    
    // 다리에 올라가 있는 트럭이 존재하거나
    // 대기하고 있는 트럭이 존재하는 동안에
    while bridgeWeight != 0 || !trucks.isEmpty {
        time += 1 // 시간 +1
        bridgeWeight -= bridge.removeFirst() // 다리를 다 건넌 트럭의 무게를 더해줌
        
        // 대기하고 있는 트럭이 있다면
        if !trucks.isEmpty {
            let nextTruck: Int = trucks.first!
          
            // 트럭 무게의 총합이 최대무게 이하일때
            if bridgeWeight + nextTruck <= weight {
                bridgeWeight += nextTruck // 다리 위 트럭 무게 더해주고
                bridge.append(nextTruck) // 다리 위에 트럭 올려줌
              
                trucks.removeFirst() // 트럭 배열에서 제거
            } else {
                // 다리에 트럭이 못 올라가는 경우 0 추가해서 인덱스 밀어주기
                bridge.append(0)
            }
        }
    }
    return time
}

