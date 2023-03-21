def solution(s, skip, index):
    arr1 = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o",
           "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    answer = ""
    skip = set(skip)
    for str in skip:
        arr1.remove(str)

    for str in s:
        if arr1.index(str) + index >= len(arr1):
            answer += arr1[(arr1.index(str) + index) % len(arr1)]
        else:
            answer += arr1[arr1.index(str) + index]

    return answer
