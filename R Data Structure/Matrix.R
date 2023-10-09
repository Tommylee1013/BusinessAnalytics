## Matrix

s = matrix(1:12, , 4) # 빈 공간으로 두면 알아서 정렬한다
print(s)

p = matrix(letters[1:12], 4, 3)
print(p)

print(class(s)) # class()함수는 python에서 type()함수와 같은 역할을 한다
print(class(p))

print(dim(s)) # dim()함수는 행렬의 차원을 출력한다
print(t(s)) # t()함수는 뭐지?? 일단 matrix출력하는 것 같다

print(nrow(s)) # row 개수
print(ncol(p)) # column 개수

print("diagonal matrix")
print(diag(3)) # parameter에 정수만 넣으면 Identify matrix 생성
print(diag(1:3)) # 대각행렬 출력
print(diag(s)) # 이미 정의된 행렬을 넣으면 대각성분 출력
print(diag(p))

# binding
uc = cbind(1:4, 11:14) # column bind
print(uc)
ur = rbind(1:4, 11:14) # row bind
print(ur)
uz = cbind(1:4, letters[1:4]) # 저장은 object로 통일된다
print(uz)

# vector 형변환
# -> column별로, 왼쪽에서 오른쪽 순서로 벡터로 변환된다
print(c(uc))
print(c(ur))
print(c(uz))