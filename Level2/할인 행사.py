def solution(want, number, discount):
    answer = 0

    for i in range(0, len(discount)):
        can = False
        if not i >= len(want) and not discount.__contains__(want[i]):
            answer = 0
            break
        for j in range(0, len(want)):
            can = number[j] <= discount[i:i+10].count(want[j])
            if not can:
                break
        if can:
            answer += 1

    return answer
