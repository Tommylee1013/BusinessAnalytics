## Vectors

# 영어 대문자와 소문자
print(LETTERS)
print(letters)

# basic sequence

print(1:5) # 1부터 5까지
print(seq(1, 5)) # 1:5와 같은 기능을 한다

temp1 = seq(1, 5, by = 0.25)
print(temp1)

temp2 = seq(1, 5, length = 9)
print(temp2)

# rep

rep1 = rep(1:3, each = 2)
print(rep1)

rep2 = rep(LETTERS[1:3], each = 2)
print(rep2)

rep3 = rep(LETTERS[1:3], 1:3)
print(rep3) # 위와 차이점??

rep4 = rep(LETTERS[1:3], rep(2, 3))
print(rep4)

# Vector
print(c(1,7,5)) # vector자료구조
print(c(T, FALSE, F, TRUE))
print(c('a',"b",'c')) # 큰따옴표나 작은따옴표나 차이가 없다

x = c(1, 7, 5)
print(x)
print(length(x))

print('Vector arithmetics')
print(1:3 + x)
print(1:3 - x)
print(1:3 * x)
print(1:3 / x) # broadcasting 되는 듯 하다
print(2*x - 1)
print(sqrt(x))

# subsetting(indexing)
print(letters[1:12])
print(letters[c(1, 10, 20)]) # 1, 10, 20 index에 있는 알파벳 출력
print(1:4[c(T,F,T,F)]) # boolean indexing

y <- c(1, 5, 7, 0)
print(y > 3) # 조건 탐색, 결과는 bool
print(y[y > 3]) # 조건 인덱싱, 결과는 벡터
print((1:4)[y > 3])

z <- 11:20;
print(z[5])
print(z[-5]) # 음수 인덱싱이 되지 않고, 인덱스 5를 제외한 모든 벡터성분 출력

print(z[c(3,5)])
print(z[-c(3,5)]) # 조건 제외 검색