## Data Frame

aa = cbind(1:4, letters[1:4]); # column을 기준으로 binding한다는 뜻
print(aa)

ab = data.frame(1:4, letters[1:4])
print(ab) # column name이 어떻게 달릴까?

ax = data.frame(a = 1:4, b = letters[1:4])
print(ax)

print(class(aa)) # "matrix" "array"
print(class(ab)) # "data.frame"
print(class(ax)) # "data.frame"

print(dim(ax)) # row 4, column 2
print(names(ax)) # "a" "b" , column 이름 출력
print(colnames(ax)) # names(ax)와 결과가 같다
print(rownames(ax)) # index names
print(row.names(ax)) # rownames랑 기능이 같은데 왜 나눈거지?? 여기서 중요한 점은 col.names()함수는 없다는거!!

print(c(aa)) # cbinding한건 그냥 elements만 일자로 나열됨
print(c(ab)) # data frame은 컬럼 출력하고 그 다음에 요소가 따로 출력됨
print(c(ax))

# Subsetting, matrix # data.frame

p = matrix(letters[1:12], 4, 3)
print(p)

print(p[2,3]) # 두번째 열, 세 번쨰 행에 있는 값이 출력된다
print(p[1,]) # 첫 번째 열
print(p[,3]) # 세 번째 행
print(p[ ,-2]) # 2행만 빼고 출력된다

print(p[1:3, ]) # 첫 번쨰부터 세 번쨰 열까지 출력됨
print(p[c(1,3)]) # 첫번쨰, 세번쨰 열 출력

print(p[c(1,3), c(3,1)])
print(p[-2, -2]) # 두 번째 열, 두 번째 행 빼고 출력한다

### assignment

print(p)
p[1:2,] <- p[3:4, ] # 3,4번째 열이 1,2번째 열로 바뀜
print(p)
