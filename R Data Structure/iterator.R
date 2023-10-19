# 반복 함수

# apply functions
x = matrix(1:20, ncol = 2)
print(x)

apply(x, 1, mean) # 열 방향 평균
apply(x, 2, mean) # 행 방향 평균

tapply(c(x), c(x)%%3, sum)
sapply(data.frame(x), sum)