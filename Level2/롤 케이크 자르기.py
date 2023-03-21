def solution(topping):
    answer = 0
    bordSet = set()
    bordDic = dict()

    for t in topping:
        if t in bordDic:
            bordDic.update({t: bordDic[t] + 1})
        else:
            bordDic[t] = 1

    for t in topping:
        bordDic.update({t: bordDic[t] - 1})
        bordSet.add(t)

        if bordDic[t] <= 0:
            del bordDic[t]

        if len(bordDic) == len(bordSet):
            answer += 1

    return answer
