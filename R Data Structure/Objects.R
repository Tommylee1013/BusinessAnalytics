# int

x = 10
print(x)

y = 100
print(y)

# String
z <- "abc" # <-를 사용해도 초기화가 가능하다
'a' -> xy # 오른쪽 방향 화살표 또한 초기화가 가능하다
print(z)
print(xy)

# 할당 연쇄 (연쇄 할당)
x1 = x2 = x3 = 20
print(x1)
print(x2)
print(x3) # R은 print함수에서 하나밖에 출력을 못하는 듯 하다

ls() # 선언, 초기화 된 모든 변수 표시
rm(x1) # 초기화된 변수 삭제
rm(xy, y) # 초기화 된 변수 삭제
ls()

rm(list = ls()) # 선언된 모든 변수들을 삭제할 수 있다
ls() # character(0), 비어 있다는 뜻