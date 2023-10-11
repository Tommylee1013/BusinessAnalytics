names(iris) <- c('sl','sw','pl','pw','sp')
levels(iris$sp) <- c('st','vc','vg')
print(dim(iris))
print(head(iris)) # 5개까지만 출력

# 다변량 회귀에서 y 변수는 cbind()를 사용한다

out <- lm(cbind(sl, sw) ~ pl+sp, iris)
print(coef(out))

# 두 개의 단변량 회귀계수의 결과

coef(lm(sl~pl+sp, iris))
coef(lm(sw~pl+sp, iris))

# long form / wide form 차이 : 방형인지 장형인지에 따라 DataFrame 표현방법이 다르다
# interaction(교우작용)
# 모형식에서의 곱셉은 산술적 의미가 아니다 (x1 + x2 + x1:x2)
## 모형식에서 곱을 하기 위해서는 I(x1*x2)를 사용한다
## lm(y ~ x1 * x2) = lm(y ~ x1 + x2 + x1:x2)
## lm(y ~ x1 / x2) = lm(y ~ x1 + x1:x2)
# 정성변수와 교우작용을 하면 Identify matrix와 교우작용을 한다

# interaction
## 1:X = 1
## X:X = X
## X:Y = X*Y