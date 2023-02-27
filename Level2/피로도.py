from itertools import *


def solution(k, dungeons):
    answer = 0
    coords = [(x, y) for x, y in dungeons]
    dungeon_list = list(set(permutations(coords, len(dungeons))))
    print(dungeon_list)
    for dungeon in dungeon_list:
        a = 0
        hp = k
        for d in dungeon:
            if d[0] <= hp:
                a += 1
                hp -= d[1]

        answer = a if answer < a else answer

    return answer
