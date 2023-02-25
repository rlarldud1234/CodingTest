def solution(s):
    answer = [0, 0]
    
    while s != "1":
        answer[1] += s.count("0")
        s = [str for str in s if str != "0"]
        answer[0] += 1
        s = format(len(s), 'b')

    return answer
