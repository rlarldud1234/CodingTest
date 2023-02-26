def solution(n):
    answer = 0
    first = 1
    second = 2

    if n > 2:
        for _ in range(2, n):
            answer = second
            second += first
            first = answer

        answer = second % 1234567
    else:
        return n

    return answer
