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
