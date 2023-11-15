library(dplyr)
library(Matrix)
library(glmnet)

y = mtcars %>% select(mpg) %>% as.matrix()
X = mtcars %>% select(-mpg) %>% as.matrix()

yc = scale(y, center = TRUE, scale = FALSE)
XS = scale(X, center = TRUE, scale = TRUE)

set.seed(42)

result <- glmnet(XS, yc,
                 family = 'gaussian',
                 alpha = 0,
                 lambda = 2.0 / 32,
                 intercept = FALSE)

# coef(result)

lambdas_to_try <- 10 ** seq(2, -2, l = 81)
r_cv <- cv.glmnet(XS, yc,
                  alpha = 0,
                  lambda = lambdas_to_try,
                  nfolds = 10,
                  intercept = FALSE)

print(r_cv)