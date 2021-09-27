array = [1, 5, 2, 6, 3, 7, 4]  # array 배열 설정
commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]

def solution(array, commands):
    answer = []
    for i,j,k in commands: #[2,5,3]
        slice=sorted(array[i-1:j])
        answer.append(slice[k-1])
        #answer.append(sorted(array[i-1:j])[k-1])
    return answer
solution(array,commands)
