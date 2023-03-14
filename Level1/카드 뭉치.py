def solution(card1, card2, goal):
    card1Index = 0
    card2Index = 0
    answer = "Yes"
    for g in goal:
        if g == card1[card1Index]:
            if card1Index < len(card1) - 1:
                card1Index += 1
        elif g == card2[card2Index]:
            if card2Index < len(card2) - 1:
                card2Index += 1
        else:
            answer = "No"

    return answer
