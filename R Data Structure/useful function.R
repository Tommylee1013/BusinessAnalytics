# 유용한 함수
## R에는 매우 많은 유용한 함수가 있지만 예를 들어 살펴보자

z = sample(1:6, 30, repl = T) # repl : replace 즉, 복원추출여부
matrix(z, 3, ) # 열을 지정하면 행은 자동으로 지정해준다
sum(z)
mean(z) # 1st moment
var(z) # 2nd moment
sd(z) # standard deviation

dnorm(0) # 정규분포의 확률밀도함수 출력
pnorm(1.96) # 신뢰상수 입력시 확률 출력
qnorm(0.975) # 확률 입력시 신뢰상수 출력

a = rnorm(30)
x = matrix(a, 3, )
round(x, 2)

round(x) # 기본적으로 자연수로 라운딩을 한다

trunc(x)

x = 0:6
cbind(x, x/2, round(x/2))