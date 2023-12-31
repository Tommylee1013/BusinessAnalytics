library(ggplot2)

x1 = rnorm(100)
x2 = x1
y = 1 + 2*x1 + 0.3*rnorm(100)

dxy = data.frame(x1, x2, y);

A = cbind(1, x1);
print(A)

B = cbind(1, x1, x2);
print(B)

out_A = lm(y ~ x1, dxy);
print(out_A)

out_B = lm(y ~ x1 + x2, dxy);
print(out_B) # x2가 NA가 출력, 근이 무수히 많다는 뜻인듯 하다

# 선형독립이 아니게 된다
# 최소자승법을 최적화하여 얻는 식을 Normal Equation이라고 한다. 정규방정식이라고 쓰지만 의미는 수직방정식이 옳다

ggplot(dxy) +
  geom_point(aes(x1, y)) +
  geom_smooth(method = lm, aes(x1, y), col = 'red', se = F)

# 연립방정식을 풀 때, 근은 세 가지 형태가 나온다
## Unique Solution
## 무수히 많은 근 (부정) : beta를 특정할 수 없다
## 근이 없는 경우 (불능) : beta가 존재하지 않는다

# 선형식이 두개가 완전히 똑같을 때, 근이 무수히 많아져서 역행렬을 추정할 수 없다
# -> Generalized Inverse를 사용한다. but unique한 값이 추정이 되지 않는다.
# beta는 여러가지 값을 가질 수 있지만, 추정치는 unique한 값이 나온다.
# AI, ML에서는 변수가 똑같은 것이 겹쳐질 수 있는데, 회귀모형에서는 쓸 수 없었던 것이 AI, ML에서는 변수가 겹치는 상황에 대해서 상당히 널널하다
# 이러한 이유로, beta를 추정하고 싶은 사람들에게는 AI모형의 추정 결과를 신뢰하기 어렵다고 한다

# Prediction Only Model
# y가 여러개이면, Multivariate Regression이라고 한다. 이 경우 설명변수는 여러개라고 본다
# Multivariate Regression에서는 오차항의 공분산 추정이 가능하다.
# 즉, Multivariate Regression의 핵심은 Covariance를 알아내는 것이다.