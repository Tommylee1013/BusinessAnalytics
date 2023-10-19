# problem 1
names(iris) <- c('sl','sw','pl','pw','sp')
lm(sl ~ sw / pl, iris)
lm(sl ~ sw + sw:pl, iris)
lm(sl ~ sw * pl, iris)

# problem 2

print(diag(4))
print(apply(diag(4), 2, max))

apply(diag(4), 1, min)

# problem 3

print(table(iris$sp)) # iris의 sp 컬럼 출력

print(diag(3)[iris$sp,])

# problem 4

# glm(sp ~ sl + sw, family = binomial, data = iris)

# problem 5

print(anova(lm(sl~sp-1, iris)))
print(anova(lm(sl~sp, data = iris)))

# problem 6

print(rep(1:3, e = 2))

# problem 8

print(coef(lm(sp ~ sl + sw, data = iris)))
out <- lm(sp ~ sl - 1, data = iris)

print(-0.3433398 + 0.7347417 -0.6378110 )

# problem 15

aa = matrix(rep(0:2, e = 4), 4)

# problem 20

print(round(2.5))
print(round(3.5))